import numpy as np
import matplotlib.pyplot as plt
from pyFAI.geometry import Geometry
from skbeam.core.utils import twotheta_to_q
import scipy.stats as sts
from pims import TiffStack
import os
from matplotlib.colors import LogNorm
from skbeam.core.mask import ring_blur_mask as rbm, mask_edge

plt.style.use('/mnt/bulk-data/Masters_Thesis/config/thesis.mplstyle')


def ring_blur_mask(img, r, int_r, alpha, bins=None, mask=None):
    """
    Perform a annular mask, which checks the ring statistics and masks any
    pixels which have a value greater or less than alpha * std away from the
    mean
    Parameters
    ----------
    img: 2darray
        The  image
    r: 2darray
        The  array which maps pixels to radii
    alpha: float or tuple or, 1darray
        Then number of acceptable standard deviations, if tuple then we use
        a linear distribution of alphas from alpha[0] to alpha[1], if array
        then we just use that as the distribution of alphas
    bins: int, optional
        Number of bins used in the integration, if not given then max number of
        pixels +1
    mask: 1darray
        A starting flattened mask
    Returns
    --------
    2darray:
        The mask
    """

    if mask is None:
        mask = np.ones(img.shape).astype(bool)
    if bins is None:
        bins = int_r.max() + 1
    if mask.shape != img.shape:
        mask = mask.reshape(img.shape)
    msk_img = img[mask]
    msk_r = r[mask]

    # integration
    mean = sts.binned_statistic(msk_r, msk_img, bins=bins,
                                # range=[0, r.max()],
                                statistic='mean')[0]
    std = sts.binned_statistic(msk_r, msk_img, bins=bins,
                               # range=[0, r.max()],
                               statistic=np.std)[0]
    if type(alpha) is tuple:
        alpha = np.linspace(alpha[0], alpha[1], len(std))
    threshold = alpha * std
    lower = mean - threshold
    upper = mean + threshold

    print(len(mean), np.max(int_r), np.min(int_r))
    # single out the too low and too high pixels
    too_low = img < lower[int_r]
    too_hi = img > upper[int_r]

    mask = mask * ~too_low * ~too_hi
    return mask.astype(bool)

# img_folder = '/mnt/bulk-data/research_data/USC_beamtime/APS_March_2016/even_more_cells/'
# cal_folder = '/mnt/bulk-data/research_data/USC_beamtime/APS_March_2016/even_more_cells/'
img_folder = '/mnt/bulk-data/research_data/USC_beamtime/APS_March_2016/S1/temp_exp'
cal_folder = '/mnt/bulk-data/research_data/USC_beamtime/APS_March_2016/Calibration/CeO2_25_3_12'
geo = Geometry()
# geo.load(os.path.join(cal_folder,'CeO2_d25-00023.poni'))
geo.load(os.path.join(cal_folder,'CeO2calibration_25-00004_sum.poni'))
lamda = geo.wavelength * 10**10

# img = TiffStack(os.path.join(img_folder, 'S32_d25-00020.tif'))[0]
# img = TiffStack(os.path.join(img_folder, 'CeO2_d25-00023.tif'))[0]
img = TiffStack(os.path.join(img_folder, 'd25_S6_VT-00017.tif'))[0]

mask = np.ones(img.shape, dtype=bool)
mask *= mask_edge(img.shape, 30)

r = geo.rArray((2048, 2048))
q = geo.qArray((2048, 2048))
pixels = np.arange(0, np.max(r), geo.pixel1)
pixel_bottom = pixels
pixel_top = pixels + geo.pixel1
tthb = np.arctan(pixel_bottom / geo.dist)
ttht = np.arctan(pixel_top / geo.dist)
dq = twotheta_to_q(ttht, lamda) - twotheta_to_q(tthb, lamda)
fq = np.linspace(0, np.max(q), len(dq))

b = np.zeros(len(fq)+1)
b[1:] = dq + fq
int_q = np.zeros(q.shape, dtype=np.int)
for i in range(len(b)-1):
    t_array = (b[i] <= q) & (q < b[i+1])
    int_q[t_array] = i - 1

save_stem = '/mnt/bulk-data/Masters_Thesis/pdf/figures/'

alpha = (2., 1.5)
q_mask = mask * ring_blur_mask(img, q, int_q, alpha, bins=dq + fq)
r_mask = mask * rbm(img, r, geo.pixel1, alpha)

fig2, ax2 = plt.subplots()
ax2.imshow(img, interpolation='none',origin='lower',
               norm=LogNorm(vmax=np.max(img) * .5),
               aspect='auto')
for m, name in zip([
    # mask,
    q_mask,
    # r_mask
],
        [
            # 'No Mask',
            'Q',
            # 'R'
        ]):
    fig2, ax2 = plt.subplots()
    print(np.sum(~m))
    Z2 = img.copy()
    Z2[~m] = 0.0
    ax2.set_title(name)
    # ax2.imshow(Z2, interpolation='none',origin='lower',
    #            # norm=LogNorm(),
    #            aspect='auto'
    #            )
    ax2.imshow(~m, interpolation='none', origin='lower',
               # norm=LogNorm(),
               aspect='auto'
               )
plt.show()
AAA
for fig, n in zip([fig2], ['masked']):
    for end in ['png', 'pdf']:
        fig.savefig(save_stem + 'single_xtal_masked.{}'.format(end),
                     bbox_inches='tight',
                     transparent='True')
