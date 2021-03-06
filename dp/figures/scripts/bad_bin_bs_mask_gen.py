import numpy as np
import matplotlib.pyplot as plt
from pyFAI.geometry import Geometry
from skbeam.core.utils import twotheta_to_q
import scipy.stats as sts
from scipy.ndimage.interpolation import rotate

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


def rbm(img, r, rsize, alpha, bins=None, mask=None):
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
    rsize: float
        The size of the pixel
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
    int_r = np.around(r / rsize).astype(int)
    if bins is None:
        bins = int_r.max() + 1
    if mask.shape != img.shape:
        mask = mask.reshape(img.shape)
    msk_img = img[mask]
    msk_r = r[mask]

    # integration
    mean = sts.binned_statistic(msk_r, msk_img, bins=bins,
                                range=[0, r.max()], statistic='mean')[0]
    std = sts.binned_statistic(msk_r, msk_img, bins=bins,
                               range=[0, r.max()], statistic=np.std)[0]
    if type(alpha) is tuple:
        alpha = np.linspace(alpha[0], alpha[1], bins)
    threshold = alpha * std
    lower = mean - threshold
    upper = mean + threshold

    # single out the too low and too high pixels
    too_low = img < lower[int_r]
    too_hi = img > upper[int_r]

    mask = mask * ~too_low * ~too_hi
    return mask.astype(bool)


geo = Geometry(
    detector='Perkin', pixel1=.0002, pixel2=.0002,
    dist=.23,
    poni1=.209, poni2=.207,
    # rot1=.0128, rot2=-.015, rot3=-5.2e-8,
    wavelength=1.43e-11
)
r = geo.rArray((2048, 2048))
q = geo.qArray((2048, 2048))
pixels = np.arange(0, np.max(r), geo.pixel1)
pixel_bottom = pixels
pixel_top = pixels + geo.pixel1
tthb = np.arctan(pixel_bottom / geo.dist)
ttht = np.arctan(pixel_top / geo.dist)
dq = twotheta_to_q(ttht, .143) - twotheta_to_q(tthb, .143)
fq = np.linspace(0, np.max(q), len(dq))

b = np.zeros(len(fq) + 1)
b[1:] = dq + fq
int_q = np.zeros(q.shape, dtype=np.int)
for i in range(len(b) - 1):
    t_array = (b[i] <= q) & (q < b[i + 1])
    int_q[t_array] = i - 1

save_stem = '/mnt/bulk-data/Masters_Thesis/dp/figures/'

for trans in [10, 30, 50, 90]:
    # make some sample data
    Z = 100 * np.cos(50 * r) ** 2 + 150

    middle = 2048 / 2.
    bs = np.zeros(r.shape, dtype=bool)
    bs[0:middle, middle - 30:middle + 30] = True
    bs[0:middle / 4, middle - 60:middle + 60] = True
    bs = rotate(bs, 0.0, order=0, mode='reflect').astype(np.bool)
    Z[bs] *= trans / 100.

    # mask = ring_blur_mask(Z, q, int_q, (3., 3), bins=dq+fq)
    mask = rbm(Z, r, geo.pixel1, (3., 3))

    print(np.sum(~mask))
    # print(np.sum(bs))

    # Then plot it
    fig1, ax1 = plt.subplots()
    # ax1.set_title('Raw data with beamstop')
    im1 = ax1.imshow(Z, interpolation='none', clim=(0, 255))
    ax1.set_xlim(0, 2048)
    ax1.set_ylim(0, 2048)

    fig2, ax2 = plt.subplots()
    # ax2.set_title('Masked Image')
    fixed_image = Z.copy()
    fixed_image[~mask] = 0.0
    im2 = ax2.imshow(fixed_image, interpolation='none', origin='lower',
                     clim=(0, 255)
                     )

    fig3, ax3 = plt.subplots()
    missed_pixels = Z.copy()
    missed_pixels[~bs] = 0.0
    missed_pixels[~mask] = 0.0
    # ax3.set_title('Missed Pixels')
    im3 = ax3.imshow(missed_pixels, interpolation='none', origin='lower',
                     clim=(0, 255)
                     )

    for fig, n in zip([fig1, fig2, fig3], ['raw', 'masked', 'missed']):
        fig.colorbar()
        for end in ['png', 'pdf']:
            fig.savefig(save_stem + 'bad_bin_{}_{}.{}'.format(n, trans, end),
                        bbox_inches='tight',
                        transparent='True')
