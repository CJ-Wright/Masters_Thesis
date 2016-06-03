import numpy as np
import matplotlib.pyplot as plt
from pyiid.utils import build_sphere_np
import matplotlib

plt.style.use('/mnt/bulk-data/Masters_Thesis/config/thesis.mplstyle')

sizes = np.loadtxt('/mnt/bulk-data/Dropbox/BNL_Project/HMC_paper/new_figures/sizes_speed.txt')
number_of_atoms = np.loadtxt('/mnt/bulk-data/Dropbox/BNL_Project/HMC_paper/new_figures/n_atoms_speed.txt').astype(np.int)
pes_speed = np.loadtxt('/mnt/bulk-data/Dropbox/BNL_Project/HMC_paper/new_figures/pes_speed.txt', skiprows=1).T
fq_speed = np.loadtxt('/mnt/bulk-data/Dropbox/BNL_Project/HMC_paper/new_figures/fq_speed.txt',  skiprows=1).T

print(pes_speed.shape)
names = ['GPU', 'GPU', 'CPU', 'CPU']

colors=['b','b', 'r', 'r']
lines = ['o', 's'] * 2

for speed, calc_type, save_name in zip([pes_speed, fq_speed], [['energy', 'force'] * 2, ['F(Q)', 'Grad F(Q)']*2], ['speed_log', 'fq_log']):
    fig = plt.figure()
    ax1 = fig.add_subplot(111)
    ax2 = ax1.twiny()
    print(len(sizes))
    print(len(colors), len(lines), len(names), len(calc_type))
    for i in range(len(names)):
        print(i)
        ax1.semilogy(sizes, speed[i], color=colors[i], marker=lines[i], label= '{0} {1}'.format(names[i], calc_type[i]))

    ax1.legend(loc='best')
    ax1.set_xlabel('NP diameter in Angstrom')
    ax1.set_ylabel('Elapsed running time (s)')
    ax2.set_xlim(ax1.get_xlim())
    ax2.set_xticks(ax1.get_xticks())
    ax2.set_xticklabels(number_of_atoms)
    ax2.set_xlabel('Number of Atoms')
    for a in ['eps', 'png', 'pdf']:
        plt.savefig('{}.{}'.format(save_name, a), bbox_inches='tight', transparent=True)
    plt.show()
