import numpy as np
import matplotlib.pyplot as plt
from skbeam.core.utils import twotheta_to_q
import matplotlib

font = {'family': 'normal',
        # 'weight': 'bold',
        'size': 18}

matplotlib.rc('font', **font)
matplotlib.rc('figure', figsize=(8, 6), dpi=80 * 3)
save_file = '/mnt/bulk-data/Masters_Thesis/pdf/figures/'

n_pixels = 1048
size_pixels = .0002
pixels = np.linspace(0, n_pixels * size_pixels, n_pixels)
dist = .25

pixel_bottom = pixels
pixel_top = pixels + size_pixels
tthb = np.arctan(pixel_bottom / dist)
ttht = np.arctan(pixel_top / dist)
dq = twotheta_to_q(ttht, .143) - twotheta_to_q(tthb, .143)

plt.plot(twotheta_to_q(pixels/dist, .143), dq)
plt.title(r'$Q$ resolution')
plt.ylabel(r'$\Delta Q (\AA^{-1}$)')
plt.xlabel(r'$Q (\AA^{-1}$)')
plt.tight_layout()
plt.savefig(save_file + 'res.eps', bbox_inches='tight',
            transparent='True')
plt.savefig(save_file + 'res.png', bbox_inches='tight',
            transparent='True')
plt.savefig(save_file + 'res.pdf', bbox_inches='tight',
            transparent='True')
plt.show()
