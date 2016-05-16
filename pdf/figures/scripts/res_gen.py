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

res = []
for i in range(len(bins) - 1):
    res.append(bins[i+1] - bins[i])

plt.plot(bins[:-1], res)
# plt.title(r'$Q$ resolution')
plt.ylabel(r'$\Delta Q (\AA^{-1}$)')
plt.xlabel(r'$Q (\AA^{-1}$)')
plt.tight_layout()
plt.savefig(save_file + 'res.eps', bbox_inches='tight',
            transparent='True')
plt.savefig(save_file + 'res.png', bbox_inches='tight',
            transparent='True')
plt.savefig(save_file + 'res.pdf', bbox_inches='tight',
            transparent='True')
