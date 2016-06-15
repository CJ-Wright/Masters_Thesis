from __future__ import (division, print_function)

import matplotlib.cm as cmx
import matplotlib.colors as colors
from matplotlib import gridspec
from metadatastore.api import db_connect as mds_db_connect

from filestore.api import db_connect as fs_db_connect

fs_db_connect(
    **{'database': 'data-processing-dev', 'host': 'localhost', 'port': 27017})
mds_db_connect(
    **{'database': 'data-processing-dev', 'host': 'localhost', 'port': 27017})

from databroker import db, get_events
from datamuxer import DataMuxer
from sidewinder_spec.utils.handlers import *
import logging

logger = logging.getLogger(__name__)

if __name__ == '__main__':
    import os
    import numpy as np
    import matplotlib.pyplot as plt

    plt.style.use('/mnt/bulk-data/Masters_Thesis/config/thesis.mplstyle')
    save = True
    print('save', save)
    dest = '../'
    for output, offset in zip(['chi', 'gr'], [.3, 1.5]):
        for ns in [
            [1, 2, 3, 4, 5],
            # [1, 16, 18, 20, 22]
        ]:
            ns.sort()
            for event_idx, event_name in zip([1, 54 // 2, -3],
                                             ['initial', 'high-temp',
                                              'final']):
                for xmin, xmax, length in zip([
                    0, 1000, 3000,
                    0
                ], [
                    1000, 3000, 4000,
                    4000
                ], [
                    'short', 'medium', 'long',
                    'full'
                ]):
                    fig = plt.figure()
                    ax1 = fig.add_subplot(111)
                    names = ['As-Synthesized', '25 hr', '50 hr',
                             '100 hr', '200 hr']
                    for i, (j, lab) in enumerate(zip(ns,
                                                     names)):
                        print(j)
                        folder = '/mnt/bulk-data/research_data/USC_beamtime/APS_March_2016/S' + str(
                            j) + '/temp_exp'
                        key_list1 = [f for f in os.listdir(folder) if
                                     f.endswith(output) and f.startswith('0')]
                        key_list1.sort()

                        if event_idx == 54 / 2 and j == 1:
                            key = key_list1[83 // 2]
                        else:
                            key = key_list1[event_idx]
                        data = (
                            np.loadtxt(os.path.join(folder, key), skiprows=8)[
                            :,
                            0],
                            np.loadtxt(os.path.join(folder, key), skiprows=8)[
                            :,
                            1])

                        cm = plt.get_cmap('magma')
                        cNorm = colors.Normalize(vmin=0, vmax=len(ns))
                        scalarMap = cmx.ScalarMappable(norm=cNorm, cmap=cm)
                        x, y = data
                        colorVal = scalarMap.to_rgba(i)
                        if output is 'gr':
                            ax1.plot(x[xmin:xmax], y[xmin:xmax] + i * offset,
                                     color=colorVal,
                                     label=lab, lw=1)
                            ax1.set_xlim(x[xmin:xmax][0], x[xmin:xmax][-1])
                        else:
                            ax1.plot(x, y + i * offset,
                                     color=colorVal,
                                     label=lab, lw=1)
                    if output == 'gr':
                        ax1.set_xlabel(r"$r (\AA)$")
                        ax1.set_ylabel(r"$G (\AA^{-2})$")
                    else:
                        ax1.set_xlabel(r"$Q (\AA^{-1})$")
                        ax1.set_ylabel(r"$I (Q)$")
                    for zz in ['', 'side']:
                        if zz == '':
                            plt.legend(bbox_to_anchor=(0., 1.02, 1., .102),
                                       loc=3,
                                       ncol=2, mode="expand", borderaxespad=0.,
                                       framealpha=.1,
                                       fancybox=True)
                        else:
                            plt.legend(bbox_to_anchor=(1.05, 1),
                                       loc=2,
                                       ncol=1, borderaxespad=0.,
                                       framealpha=.1,
                                       fancybox=True)
                        fig.tight_layout(rect=[0, 0, 1, .95], w_pad=1e-6)
                        if save:
                            for fmt in ['eps', 'png', 'pdf']:
                                fig.savefig(os.path.join(
                                    dest,
                                    'S{}-{}_{}_{}_{}{}.{}'.format(min(ns),
                                                                  max(ns),
                                                                  length,
                                                                  event_name,
                                                                  output,
                                                                  zz,
                                                                  fmt)))
                        else:
                            plt.show()
