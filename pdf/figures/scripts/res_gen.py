import matplotlib.pyplot as plt
import numpy as np
import scipy.stats as sts
from pyFAI.geometry import Geometry
from skbeam.core.recip import generate_q_bins
from skbeam.core.utils import twotheta_to_q

plt.style.use('/mnt/bulk-data/Masters_Thesis/config/thesis.mplstyle')

save_file = '/mnt/bulk-data/Masters_Thesis/pdf/figures/'

geo = Geometry(
    detector='Perkin', pixel1=.0002, pixel2=.0002,
    dist=.23,
    poni1=.209, poni2=.207,
    # rot1=.0128, rot2=-.015, rot3=-5.2e-8,
    wavelength=1.43e-11
)

r = geo.rArray((2048, 2048))
q = geo.qArray((2048, 2048)) / 10
bins = generate_q_bins(np.max(r)-.5*geo.pixel1, geo.pixel1, geo.dist, .143)

int_q = np.zeros(q.shape, dtype=np.int)
for i in range(len(bins)-1):
    t_array = (bins[i] <= q) & (q < bins[i+1])
    int_q[t_array] = i

res = []
for i in range(len(bins) - 1):
    res.append(bins[i+1] - bins[i])

counts = sts.binned_statistic(q.ravel(), int_q.ravel(), bins=bins, statistic='count')[0]

even_bins_bins = np.linspace(0, np.max(q), 2000)
even_bins_res = []
for i in range(len(even_bins_bins) - 1):
    even_bins_res.append(even_bins_bins[i+1] - even_bins_bins[i])

plt.plot(bins[:-1], res, label=r'$Q resolution binning $')
plt.plot(even_bins_bins, even_bins_res, label=r'$Even binning$')
plt.ylabel(r'$\Delta Q (\AA^{-1}$)')
plt.xlabel(r'$Q (\AA^{-1}$)')
plt.legend()
plt.tight_layout()
for end in ['eps', 'png', 'pdf']:
    plt.savefig(save_file + 'res.{}'.format(end), bbox_inches='tight',
                transparent='True')

plt.clf()
plt.plot(bins[:-1], counts)
plt.ylabel('Number of Pixels')
plt.xlabel(r'$Q (\AA^{-1}$)')
plt.tight_layout()
for end in ['eps', 'png', 'pdf']:
    plt.savefig(save_file + 'pixels.{}'.format(end), bbox_inches='tight',
                transparent='True')