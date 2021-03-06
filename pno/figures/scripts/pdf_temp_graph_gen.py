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
import matplotlib.pyplot as plt
from pyiid.calc import wrap_rw
from decimal import Decimal

logger = logging.getLogger(__name__)


def plot_temp_1d_data(temps, data_list, x_lims=None, save_path=None, plot=True,
                      plot_type='gr', offset=.5, save=False):
    if x_lims is None:
        x_lims = (0, np.max(data_list[0][0]))
    for xmin, xmax in x_lims:
        # setup the figure
        # fig = plt.figure(figsize=(26, 12))
        fig = plt.figure()
        gs = gridspec.GridSpec(1, 2, width_ratios=[5, 1])
        gs.update(left=0, right=1, hspace=1e-6, wspace=.01)
        ax1 = plt.subplot(gs[0])
        ax2 = plt.subplot(gs[1], sharey=ax1)

        # Strip the Temp graph of the y values
        plt.setp(ax2.get_yticklabels(), visible=False)
        plt.setp(ax2.get_ylabel(), visible=False)

        # Setup the color map
        cm = plt.get_cmap('viridis')
        cm = plt.get_cmap('magma')
        cNorm = colors.Normalize(vmin=0, vmax=len(temps)*1.2)
        scalarMap = cmx.ScalarMappable(norm=cNorm, cmap=cm)

        # for each temp/data plot the temperature and data
        ylim_min = None
        ylim_max = None
        for idx in range(len(temps)):
            x, y = data_list[idx]
            print(np.max(y), idx)
            colorVal = scalarMap.to_rgba(idx)
            ax1.plot(x, y + idx * offset, color=colorVal, lw=.5)
            ax2.plot(Ts[idx], y[-1] + idx * offset, marker='o', color=colorVal)
            if ylim_min is None or ylim_min > np.min(y + idx * offset):
                ylim_min = np.min(y + idx * offset)
            if ylim_max is None or ylim_max < np.max(y + idx * offset):
                ylim_max = np.max(y + idx * offset)

        # Set the x-axis to the temperatures for the temp plot
        ax2.locator_params(nbins=5, tight=True)
        ax2.set_xticklabels([str(f) for f in ax2.get_xticks()],
                            rotation=90)
        ax2.set_xlabel(r'Temperature $^\circ$C')
        if plot_type == 'gr':
            ax1.set_xlabel(r"$r (\AA)$")
            ax1.set_ylabel(r"$G (\AA^{-2})$")
        elif plot_type == 'chi':
            ax1.set_xlabel(r"$Q (\AA^{-1})$")
            ax1.set_ylabel(r"$I (Q) $")
        ax1.set_ylim(ylim_min, ylim_max)
        ax1.set_xlim(xmin, xmax)

        if save:
            for output_type in ['png', 'eps', 'pdf']:
                safe_xmin = str(xmin).replace('.', 'p')
                safe_xmax = str(xmax).replace('.', 'p')
                dest = os.path.join(save_path, '{}_to_{}_{}.{}'.format(
                    safe_xmin, safe_xmax, plot_type, output_type
                ))
                fig.savefig(dest)
        if plot:
            plt.show()


if __name__ == '__main__':
    import os
    import numpy as np
    import matplotlib.pyplot as plt

    plt.style.use('/mnt/bulk-data/Masters_Thesis/config/thesis.mplstyle')

    save = False

    # Sample names of interest for plotting
    ns = [
        1,
        2,
        3, 4, 5,
    ]
    ns.sort()

    # For each sample plot the intra sample temperature curve
    for i in ns:
        print(i)
        save_folder = '../S{}'.format(i)

        # Get the folder where the data is
        folder = '/mnt/bulk-data/research_data/USC_beamtime/APS_March_2016/S' \
                 + str(i) + '/temp_exp'

        # Get the run header assocaited with that folder
        hdr = db(run_folder=folder)[0]

        # Mux the data so that we have the correct Temp->data relationship
        dm = DataMuxer()
        dm.append_events(get_events(hdr))
        df = dm.to_sparse_dataframe()
        print(df.keys())
        binned = dm.bin_on('img', interpolation={'T': 'linear'})

        for plot_type in [
            'gr',
            'chi'
        ]:
            if plot_type is 'gr':
                # Only to the G(r)
                key_list = [f for f in os.listdir(folder) if
                            f.endswith('.gr') and not f.startswith('d')]
                # If we are working with G(r) files use these offset and read parameters
                offset = .1
                skr = 0
                xlims = [
                    (0, 40),
                    (0, 10),
                ]
            else:
                key_list = [f for f in os.listdir(folder) if
                            f.endswith('.chi') and not f.startswith('d')
                            and int(f.split('.')[0]) % 2 == 1]
                skr = 8
                offset = .05
                xlims = [
                    (0, 12),
                    (.8, 5),
                    (5, 12)
                ]
            key_list.sort()

            # Don't do the last one we had some problems with that one
            key_list = key_list[:-1]

            # Get the indexes for the data this ties the data to the temps
            idxs = [int(os.path.splitext(f)[0]) for f in key_list]
            Ts = binned['T'].values[idxs]
            output = os.path.splitext(key_list[0])[-1][1:]

            # The read params should be handled by filestore at some point
            # However this needs analysisstore

            # Load the data
            data_list = [
                (np.loadtxt(os.path.join(folder, f), skiprows=skr)[:, 0],
                 np.nan_to_num(np.loadtxt(os.path.join(folder, f), skiprows=skr)[:, 1]))
                for f in key_list]
            for a, b in data_list:
                print(np.max(b))
            print(len(data_list))
            # Specify the x limits:
            if not os.path.exists(save_folder):
                os.makedirs(save_folder)
            # '''
            plot_temp_1d_data(Ts, data_list=data_list, x_lims=xlims,
                              save_path=save_folder,
                              plot_type=plot_type,
                              save=True,
                              plot=False,
                              offset=offset
                              )
            # '''
            # '''
            rws = np.zeros((len(data_list), len(data_list)))
            print(Ts.shape)
            for i in range(len(data_list)):
                for j in range(len(data_list)):
                    rws[i, j] = wrap_rw(data_list[i][1], data_list[j][1])[0] * 100

            fig, ax = plt.subplots()
            im = ax.imshow(rws, interpolation='none', cmap='viridis',
                           # aspect='auto',
                           origin='lower left')
            xticks = np.asarray(ax.get_xticks(), dtype=int)
            tsxt = Ts[xticks[1:-1]]
            tsxt = np.reshape(tsxt, len(tsxt))
            for s in range(len(tsxt)):
                tsxt[s] = float(Decimal(np.round(tsxt[s], 0)).quantize(Decimal('1.')))
            xtl = ['']
            xtl.extend(tsxt.astype(int).tolist())
            xtl.append('')
            ax.set_xticklabels(xtl)
            ax.set_yticklabels(xtl)
            ax.set_xlabel(r'Temperature $^\circ$C')
            ax.set_ylabel(r'Temperature $^\circ$C')
            cbar = fig.colorbar(im)
            for output_type in ['png', 'eps', 'pdf']:
                dest = os.path.join(save_folder, 'rw_{}.{}'.format(
                    plot_type, output_type
                ))
                fig.savefig(dest)
            plt.show()
            # '''