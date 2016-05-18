import numpy as np
import matplotlib.pyplot as plt
from pyFAI.geometry import Geometry
from skbeam.core.utils import twotheta_to_q
import scipy.stats as sts
from scipy.ndimage.interpolation import rotate
from databroker import db, get_events
from datamuxer import DataMuxer
from diffpy.pdfgetx import PDFGetter
from metadatastore.api import db_connect as mds_db_connect
from sidewinder_spec.utils.handlers import *

from filestore.api import db_connect as fs_db_connect
from filestore.api import retrieve
from skbeam.diffraction import bin_edges_to_centers
from matplotlib.colors import LogNorm
plt.style.use('/mnt/bulk-data/Masters_Thesis/config/thesis.mplstyle')
save = True
save_stem = '/mnt/bulk-data/Masters_Thesis/pdf/figures/'


def find_nearest(array, value):
    idx = (np.abs(array - value)).argmin()
    return idx


def mask_edge(img_shape, edge_size):
    """
    Mask the edge of an image

    Parameters
    -----------
    img_shape: tuple
        The shape of the image
    edge_size: int
        Number of pixels to mask from the edge
    Returns
    --------
    2darray:
        The mask array, bad pixels are 0
    """
    mask = np.zeros(img_shape, dtype=bool)
    mask[edge_size:-edge_size, edge_size:-edge_size] = True
    return mask


def generate_q_bins(rmax, pixel_size, distance, wavelength, rmin=0):
    """
    Generate the Q bins at the resolution of the detector
    Parameters
    -----------
    rmax: float
        The maximum radial distance on the detector in distance units.
        Note that this should go to the bottom edge of the pixel.
    pixel_size: float
        The size of the pixels, in the same units as rmax
    distance: float
        The sample to detector distance, in the same units as rmax
    wavelength: float
        The wavelength of the x-rays
    rmin: float, optional
        The minimum radial distance on the detector in distance units. Defaults
        to zero. Note that this should be the bottom of the pixel

    Returns
    -------
    ndarray:
        The bin edges, suitable for np.histogram or
        scipy.stats.binned_statistic
    """
    pixel_bottom = np.arange(rmin, rmax, pixel_size)
    pixel_top = pixel_bottom + pixel_size

    bottom_tth = np.arctan(pixel_bottom[0] / distance)
    top_tth = np.arctan(pixel_top / distance)

    top_q = twotheta_to_q(top_tth, wavelength)

    bins = np.zeros(len(top_q) + 1)

    bins[0] = twotheta_to_q(bottom_tth, wavelength)
    bins[1:] = top_q
    return bins


def ring_blur_mask(img, q, alpha, bins, mask=None):
    """
    Perform a annular mask, which checks the ring statistics and masks any
    pixels which have a value greater or less than alpha * std away from the
    mean
    Parameters
    ----------
    img: 2darray
        The  image
    q: 2darray
        The  array which maps pixels to Q space
    alpha: float or tuple or, 1darray
        Then number of acceptable standard deviations, if tuple then we use
        a linear distribution of alphas from alpha[0] to alpha[1], if array
        then we just use that as the distribution of alphas
    rmax: float
        The maximum radial distance on the detector
    pixel_size: float
        The size of the pixels, in the same units as rmax
    distance: float
        The sample to detector distance, in the same units as rmax
    wavelength: float
        The wavelength of the x-rays
    mask: 1darray
        A starting flattened mask
    Returns
    --------
    2darray:
        The mask
    """

    if mask is None:
        mask = np.ones(img.shape).astype(bool)
    if mask.shape != img.shape:
        mask = mask.reshape(img.shape)
    msk_img = img[mask]
    msk_q = q[mask]

    int_q = np.zeros(q.shape, dtype=np.int)
    for i in range(len(bins) - 1):
        t_array = (bins[i] <= q) & (q < bins[i + 1])
        int_q[t_array] = i - 1
    # integration
    mean = sts.binned_statistic(msk_q, msk_img, bins=bins[1:],
                                statistic='mean')[0]
    std = sts.binned_statistic(msk_q, msk_img, bins=bins[1:],
                               statistic=np.std)[0]
    if type(alpha) is tuple:
        alpha = np.linspace(alpha[0], alpha[1], len(std))
    threshold = alpha * std
    lower = mean - threshold
    upper = mean + threshold

    # single out the too low and too high pixels
    too_low = img < lower[int_q]
    too_hi = img > upper[int_q]

    mask = mask * ~too_low * ~too_hi
    return mask.astype(bool)


hdrs = db(
    run_folder='/mnt/bulk-data/research_data/USC_beamtime/APS_March_2016/S1/temp_exp')

hdr = hdrs[0]
print(hdr['start']['run_folder'], hdr['start']['uid'])

# Get calibrations
if not hdr['start']['is_calibration']:
    cals = [db[u]['start']['poni'][0] for u in
            hdr['start']['calibration']]
else:
    cals = [p for p in hdr['start']['poni']]

geos = [retrieve(p) for p in cals]
cal_dists = np.asarray(
    [g.dist for g in geos]) * 100  # convert to meters

events = get_events(hdr)
ev0 = events.next()
detz = ev0['data']['detz']
cal_idx = np.argmin((detz - cal_dists) ** 2)
geo = geos[cal_idx]
img = retrieve(ev0['data']['img'])
# Correct for polarization
img /= geo.polarization(img.shape, .95)

r = geo.rArray(img.shape)
q = geo.qArray(img.shape) / 10  # pyFAI works in nm**-1, we want A**-1
fq = geo.qArray(img.shape).ravel()
fimg = img.ravel()
bins = generate_q_bins(np.max(r) - .5 * geo.pixel1,
                       geo.pixel1, geo.dist, geo.wavelength * 10**10)
x = bin_edges_to_centers(bins)
lidx = find_nearest(x, 28)
uidx = find_nearest(x, 31)
m0 = np.ones(img.shape, dtype=int).astype(bool)
m1 = (m0 * mask_edge(img.shape, 30)).astype(np.bool)
m2 = ring_blur_mask(img, q, (2., 2.), bins, mask=m1)

muidx = find_nearest(x, 35)

for name, mask in zip(
        [
            'no_mask',
            'edge_mask',
            'auto_mask'
        ], [
            m0,
            m1,
            m2
        ]):
    img2 = img.copy()
    img2[~mask] = np.nan

    mean = \
        sts.binned_statistic(q[mask], img[mask], bins=bins, statistic='mean')[
            0]
    median = \
        sts.binned_statistic(q[mask], img[mask], bins=bins,
                             statistic='median')[0]
    std = \
        sts.binned_statistic(q[mask], img[mask], bins=bins, statistic=np.std)[
            0]

    fig1, ax = plt.subplots()
    ax.imshow(img2, norm=LogNorm(vmax=.99*np.max(img[mask])))
    plt.tight_layout()

    fig11, ax = plt.subplots()
    ax.imshow(~mask)
    plt.tight_layout()

    fig2, ax = plt.subplots()
    ax.plot(x[:muidx], mean[:muidx], label='Mean')
    ax.plot(x[:muidx], median[:muidx], label='Median')
    ax.set_ylabel(r'$I(Q)$ in arbitrary units')
    ax.set_xlabel(r'$Q (\AA^{-1}$)')
    ax.legend()
    plt.tight_layout()

    fig3, ax = plt.subplots()
    ax.plot(x[:muidx], (std / median)[:muidx], label='Standard Deviation')
    ax.legend()
    ax.set_ylabel('Normalized standard deviation')
    ax.set_xlabel(r'$Q (\AA^{-1}$)')
    plt.tight_layout()

    fig4, ax = plt.subplots()
    ax.plot(x[lidx:uidx], mean[lidx:uidx], label='Mean')
    ax.plot(x[lidx:uidx], median[lidx:uidx], label='Median')
    ax.set_ylabel(r'$I(Q)$ in arbitrary units')
    ax.set_xlabel(r'$Q (\AA^{-1}$)')
    ax.set_xlim((x[lidx], x[uidx]))
    ax.legend()
    plt.tight_layout()

    fig5, ax = plt.subplots()
    ax.plot(x[lidx:uidx], (std / median)[lidx:uidx],
            label='Standard Deviation')
    ax.set_ylabel(r'Normalized standard deviation')
    ax.set_xlabel(r'$Q (\AA^{-1}$)')
    ax.set_xlim((x[lidx], x[uidx]))
    ax.legend()
    plt.tight_layout()
    if save:
        for plot_name, fig in zip(['img', 'mask','ave', 'std', 'high_q_ave',
                                   'high_q_std'],
                                  [fig1, fig11, fig2, fig3, fig4, fig5]):
            for end in ['png', 'pdf']:
                fig.savefig(
                    save_stem + '{}_{}.{}'.format(name, plot_name, end))
    else:
        plt.show()
exit()
