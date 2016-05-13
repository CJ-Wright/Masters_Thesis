import numpy as np
import matplotlib.pyplot as plt
from pyFAI.geometry import Geometry
from skbeam.core.utils import twotheta_to_q
import scipy.stats as sts
from scipy.ndimage.interpolation import rotate

plt.style.use('/mnt/bulk-data/Masters_Thesis/config/thesis.mplstyle')
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

b = np.zeros(len(fq)+1)
b[1:] = dq + fq
int_q = np.zeros(q.shape, dtype=np.int)
for i in range(len(b)-1):
    t_array = (b[i] <= q) & (q < b[i+1])
    int_q[t_array] = i - 1

save_stem = '/mnt/bulk-data/Masters_Thesis/pdf/figures/'

for j in [100, 300, 500, 1000]:
    #make some sample data
    Z = 100*np.cos(50*r)**2 + 150

    np.random.seed(10)
    pixels = []
    for i in range(0, j):
        a, b = np.random.randint(low=0, high=2048), np.random.randint(low=0,
                                                                      high=2048)
        if np.random.random() > .5:
            # Add some hot pixels
            Z[a, b] = np.random.randint(low=200, high=255)
        else:
            # and dead pixels
            Z[a, b] = np.random.randint(low=0, high=10)
        pixels.append((a, b))

    mask = ring_blur_mask(Z, q, int_q, (3., 3), bins=dq+fq)

    print(np.sum(~mask))
    # print(np.sum(bs))
    fig2, ax2 = plt.subplots()
    for y, x in pixels:
        ax2.plot(x, y, 'ro', mfc='none', mec='b', ms=10)

    for y, x in zip(*np.nonzero(~mask)):
        ax2.plot(x, y, 'bo',
                 ms=5)

    #Then plot it
    # ax2.set_title('Masked Image')
    ax2.imshow(Z, interpolation='none',origin='lower',
               )
    for fig, n in zip([fig2], ['masked']):
        for end in ['png', 'pdf']:
            fig.savefig(save_stem + 'dead_pixel_{}_{}.{}'.format(n, j, end),
                         bbox_inches='tight',
                         transparent='True')

