from ase.cluster import FaceCenteredCubic
from ase import Atoms
from pyiid.adp import ADP
from pyiid.experiments.elasticscatter import ElasticScatter
import numpy as np
import matplotlib.pyplot as plt
from pyiid.experiments.elasticscatter.cpu_wrappers.nxn_cpu_wrap import wrap_fq
from copy import deepcopy as dc
from ase.visualize import view
from itertools import product
from scipy.signal import argrelmax
from workflow_analysis.analysis.plot import plot_pdf, colors
from pyiid.sim.dynamics import classical_dynamics
from pyiid.calc.calc_1d import Calc1D
from ase import Atoms

def null_func(atoms):
    return np.zeros((len(atoms), 3))

atoms = Atoms(FaceCenteredCubic('Au', [[1, 0, 0], [1, 1, 0], [1, 1, 1]], (4, 6, 4)))
atoms.center()

s = ElasticScatter({'qmin': 3., 'rmax': 20.})

displacement = atoms.get_positions() - atoms.get_center_of_mass()
distance = np.sqrt(np.sum(displacement**2, axis=1))
print(np.max(distance))
norm_displacement = (displacement.T / distance).T

adp_tensor = norm_displacement * .01
print(np.max(adp_tensor))

adp_tensor_target = adp_tensor.copy()

target_atoms = atoms.copy()
target_adps = ADP(atoms, adps=adp_tensor_target)
target_atoms.info['adps'] = target_adps
target_pdf = s.get_pdf(target_atoms)

adp_calc = Calc1D(target_data=target_pdf,
                  exp_grad_function=s.get_grad_adp_pdf,
                  exp_function=s.get_pdf,
                  conv=100)

calc = Calc1D(target_data=target_pdf,
                  exp_grad_function=null_func,
                  exp_function=s.get_pdf,
                  conv=100)


starting_atoms = atoms.copy()
starting_adps = ADP(atoms, adps=adp_tensor * np.random.random(adp_tensor.shape))
starting_adps.set_calculator(adp_calc)
starting_atoms.info['adps'] = starting_adps

plot_pdf(s.get_r(), target_pdf, s.get_pdf(starting_atoms), show=False,
         save_file='../random/start')

starting_atoms.set_calculator(adp_calc)
traj = classical_dynamics(starting_atoms, .01, 100)

nrg = []
for atoms in traj:
    atoms.set_momenta(atoms.info['adps'].get_positions() * 1000)
    nrg.append(atoms.get_potential_energy())
print(traj[np.argmin(nrg)].info['adps'].get_positions() / adp_tensor)

target_atoms.set_momenta(target_atoms.info['adps'].get_positions() * 1000)

# view(target_atoms)
# view(traj)
plot_pdf(s.get_r(), target_pdf, s.get_pdf(traj[np.argmin(nrg)]), show=False, save_file='../random/min')

save_file = '../random/'
# need a way to plot the ADPs
fig, axs = plt.subplots(3, sharex=True)
for n, (ax, atoms, name) in enumerate(zip(axs, [starting_atoms, traj[np.argmin(nrg)], target_atoms], ['start', 'min', 'target'])):
    mag = [np.sqrt(np.sum(atoms.info['adps'].get_positions()**2, axis=1))]
    ax.scatter(distance, mag, c=colors[n], marker='o',
               label='{0}'.format(name), s=40)

plt.show()
# plt.savefig(save_file + '_rbonds.eps', bbox_inches='tight',
#             transparent='True')
# plt.savefig(save_file + '_rbonds.png', bbox_inches='tight',
#             transparent='True')