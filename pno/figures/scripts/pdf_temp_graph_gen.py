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
from xpd_workflow.parsers import parse_xrd_standard

logger = logging.getLogger(__name__)

if __name__ == '__main__':
    import os
    import numpy as np
    import matplotlib.pyplot as plt
    save = False
    ns = [1, 2, 3, 4, 5,
          # 18, 20, 22, 16, 28, 29, 27, 26
          ]
    # ns = [26]
    ns.sort()
    #
    for i in ns:
        legended_hkl = []
        print(i)
        folder = '/mnt/bulk-data/research_data/USC_beamtime/APS_March_2016/S' \
                 + str(i) + '/temp_exp'
        hdr = db(run_folder=folder)[0]
        dm = DataMuxer()
        dm.append_events(get_events(hdr))
        df = dm.to_sparse_dataframe()
        print(df.keys())
        binned = dm.bin_on('img', interpolation={'T': 'linear'})

        key_list = [f for f in os.listdir(folder) if
                    f.endswith('.gr') and not f.startswith('d')]
        key_list.sort()
        key_list = key_list[:-1]
        # key_list2.sort()
        idxs = [int(os.path.splitext(f)[0]) for f in key_list]
        Ts = binned['T'].values[idxs]
        output = os.path.splitext(key_list[0])[-1][1:]
        if key_list[0].endswith('.gr'):
            offset = .1
            skr = 0
        data_list = [(np.loadtxt(os.path.join(folder, f), skiprows=skr)[:, 0],
                      np.loadtxt(os.path.join(folder, f), skiprows=skr)[:, 1])
                     for f in key_list]
        ylim_min = None
        for xmax, length in zip(
                [len(data_list[0][0]) - 1, len(data_list[0][0]) - 1],
                ['short', 'full']):
            fig = plt.figure(figsize=(26, 12))
            gs = gridspec.GridSpec(1, 2, width_ratios=[5, 1])
            ax1 = plt.subplot(gs[0])
            if length == 'short':
                ax1.set_xlim(1.5, 4.5)
            ax2 = plt.subplot(gs[1], sharey=ax1)
            plt.setp(ax2.get_yticklabels(), visible=False)
            cm = plt.get_cmap('viridis')
            cNorm = colors.Normalize(vmin=0, vmax=len(key_list))
            scalarMap = cmx.ScalarMappable(norm=cNorm, cmap=cm)
            for idx in range(len(key_list)):
                xnm, y = data_list[idx]
                colorVal = scalarMap.to_rgba(idx)
                if output == 'chi':
                    x = xnm / 10.
                ax1.plot(x[:xmax], y[:xmax] + idx * offset,
                         color=colorVal)
                ax2.plot(Ts[idx], y[-1] + idx * offset, marker='o',
                         color=colorVal)
                if ylim_min is None or ylim_min > np.min(
                        y[:xmax + idx * offset]):
                    ylim_min = np.min(y[:xmax + idx * offset])
            ax2.set_xticklabels([str(f) for f in ax2.get_xticks()],
                                rotation=90)
            if output == 'gr':
                bnds = ['O-Pr', 'O-Ni', 'Ni-Ni', 'Pr-Pr', 'Ni-Pr', 'O-Pr',
                        'O-Ni',
                        'Ni-Ni-Ni', 'Pr-Ni', 'Pr-Pr', 'Pr-Ni-O', 'Ni-Pr-Ni',
                        'Pr-Pr', 'Rs:Pr-Pr', 'Rs:Pr_Pr']
                bnd_lens = [2.320, 1.955, 3.883, 3.765, 3.186, 2.771, 2.231,
                            7.767, 4.426, 6.649, 4.989, 5.404, 3.374, 3.910,
                            8.801]
                # ax1.grid(True)
                # ax2.grid(True)
                for bnd, bnd_len in zip(bnds, bnd_lens):
                    ax1.axvline(bnd_len, color='grey', linestyle='--')
                ax3 = ax1.twiny()
                ax3.set_xticks(np.asarray(bnd_lens) / x[xmax])
                ax3.set_xticklabels(bnds, rotation=90)
            ax2.set_xlabel('Temperature C')
            ax1.set_xlabel(r"$r (\AA)$")
            ax1.set_ylabel(r"$G (\AA^{-2})$")
            ax1.set_ylim(ylim_min)
            gs.tight_layout(fig, rect=[0, 0, 1, .98], w_pad=1e-6)

            if save:

                fig.savefig(os.path.join('/mnt/bulk-data/Dropbox/',
                                         'S{}_{}_output_{}.png'.format(
                                             i, length, output)))
                fig.savefig(os.path.join('/mnt/bulk-data/Dropbox/',
                                         'S{}_{}_output_{}.eps'.format(
                                             i, length, output)))
            else:
                plt.show()