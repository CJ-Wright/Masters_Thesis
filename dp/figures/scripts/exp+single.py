import numpy as np
import matplotlib.pyplot as plt
from pyFAI.geometry import Geometry
from skbeam.core.utils import twotheta_to_q
import scipy.stats as sts
from pims import TiffStack
import os
from matplotlib.colors import LogNorm
from skbeam.core.mask import mask_edge
import matplotlib as mpl
plt.style.use('/mnt/bulk-data/Masters_Thesis/config/thesis.mplstyle')


def generate_q_bins(rmax, qmax, pixel_size, distance, wavelength):
    """
    Generate the Q bins at the resolution of the detector
    Parameters
    -----------
    rmax: float
        The maximum radial distance on the detector
    qmax: float
        The maximum Q on the detector
    pixel_size: float
        The size of the pixels, in the same units as rmax
    distance: float
        The sample to detector distance, in the same units as rmax
    wavelength: float
        The wavelength of the x-rays

    Returns
    -------
    ndarray:
        The bin edges, suitable for np.histogram or
        scipy.stats.binned_statistic
    """
    base_pixels = np.arange(0, rmax, pixel_size)
    pixel_bottom = base_pixels
    pixel_top = base_pixels + pixel_size
    tthb = np.arctan(pixel_bottom / distance)
    ttht = np.arctan(pixel_top / distance)
    dq = twotheta_to_q(ttht, wavelength) - twotheta_to_q(tthb, wavelength)
    fq = np.linspace(0, qmax, len(dq))
    b = np.zeros(len(fq) + 1)
    b[1:] = dq + fq
    return b


def ring_blur_mask(img, q, alpha, rmax, pixel_size, distance, wavelength,
                   mask=None):
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
    bins = generate_q_bins(rmax, np.max(q), pixel_size, distance, wavelength)

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


img_folder = '/mnt/bulk-data/research_data/USC_beamtime/APS_March_2016/S1/temp_exp'
cal_folder = '/mnt/bulk-data/research_data/USC_beamtime/APS_March_2016/Calibration/CeO2_25_3_12'

geo = Geometry()
geo.load(os.path.join(cal_folder, 'CeO2calibration_25-00004_sum.poni'))
lamda = geo.wavelength * 10 ** 10
print(lamda)

img = TiffStack(os.path.join(img_folder, 'd25_S6_VT-00000.tif'))[0]

mask = np.ones(img.shape, dtype=bool)
mask *= mask_edge(img.shape, 30)

r = geo.rArray((2048, 2048))
q = geo.qArray((2048, 2048))
rmax = np.max(r)
qmax = np.max(q)
pixel_size = geo.pixel1
distance = geo.dist
wavelength = lamda

img -= np.min(img) - .1
alpha = (2., 2.5)
mask *= ring_blur_mask(img, q, alpha, rmax, pixel_size, distance, wavelength,
                       mask=mask)


img_folder = '/mnt/bulk-data/research_data/USC_beamtime/APS_March_2016/even_more_cells'
cal_folder = img_folder

geo = Geometry()
geo.load(os.path.join(cal_folder, 'CeO2_d25-00023.poni'))
lamda = geo.wavelength * 10 ** 10
print(lamda)

img = TiffStack(os.path.join(img_folder, 'S32_d25-00020.tif'))[0]

r = geo.rArray((2048, 2048))
q = geo.qArray((2048, 2048))
rmax = np.max(r)
qmax = np.max(q)
pixel_size = geo.pixel1
distance = geo.dist
wavelength = lamda

save_stem = '/mnt/bulk-data/Masters_Thesis/dp/figures/'

img -= np.min(img) - .1
alpha = (3., 3.)
mask *= ring_blur_mask(img, q, alpha, rmax, pixel_size, distance, wavelength,
                       mask=mask)

norm = LogNorm(
    # vmin=np.min(img) * .8,
    # vmax=np.max(img) * .1
)

# fig, (ax1, ax2, ax3) = plt.subplots(1, 3, sharex=True, sharey=True)
fig1, ax1 = plt.subplots()
ax1.imshow(img, interpolation='none', origin='lower',
           # norm=norm,
           # aspect='auto'
           )

print(np.sum(~mask))
fig2, ax2 = plt.subplots()
ax2.imshow(~mask, interpolation='none', origin='lower',
           # norm=LogNorm(),
           # aspect='auto'
           )
fig3, ax3 = plt.subplots()
Z2 = img.copy()
Z2[~mask] = 0.0
ax3.imshow(Z2, interpolation='none', origin='lower',
           # norm=norm,
           # aspect='auto'
           )
for end in ['png', 'pdf']:
    for fig, n in zip([fig1, fig2, fig3], ['raw', 'masked', 'missed']):
        fig.savefig(save_stem + 'combined_{}.{}'.format(n, end),
                    bbox_inches='tight',
                    transparent='True')
    cbfig, cbax = plt.subplots(figsize=(.5, 6))
    cb = mpl.colorbar.ColorbarBase(cbax,
                                   norm=mpl.colors.Normalize(vmin=np.min(img),
                                                             vmax=np.max(img),
                                                             ),
                                   format='%.0e')
    cbfig.savefig(save_stem + 'combined_cb.{}'.format(end),
                  bbox_inches='tight',
                  transparent='True')