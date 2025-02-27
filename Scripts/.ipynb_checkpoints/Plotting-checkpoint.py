import os
import numpy as np
import tensorflow as tf
import time
import glob
import pandas as pd
import matplotlib.pyplot as plt
import re 
import sys
import pickle
import pathlib
import matplotlib.colors as mcolors
import json
import itertools
import seaborn as sns
import xarray as xr
from matplotlib.colors import BoundaryNorm
from matplotlib import ticker
import matplotlib

sns.set_context('paper')
from .Computing_functions import *
from .Trainings import *


from mpl_toolkits.axes_grid1 import make_axes_locatable



PWD = os.getcwd()
Bet_path = '/bettik/bouissob/'
SIZE = 13
def Plot_RMSE_to_param(save = False, **kwargs):
    '''
    Deprecated for now
    '''
    RMSEs, Params, _, _, Neurs, _, Oc_tr, Oc_tar, Ep, t = Compute_RMSE_from_model_ocean(**kwargs)
    fig, ax = plt.subplots()
    ax.scatter(Params, RMSEs, color = 'blue')
    if t != []:
        ax2 = ax.twinx()
        ax2.scatter(Params, t, s = 10, color = 'red')
        ax2.set_ylabel("Training time(s)",color="red")

    ax.set_xlabel('Number of parameters')
    ax.set_ylabel('RMSE of NN vs modeled melt rates(Gt/yr)', color = 'blue')
    plt.title('RMSE as a function of parameters trained \n (NN trained on {} applied to {})'.format(Concat_Oc_names(Oc_tr), Concat_Oc_names(Oc_tar)))
    if save:
        plt.savefig(os.path.join(PWD, 'Image_output', 'RMSE_param_Ep{}_Tr{}_Tar{}_{}'.format(Ep, 
                    Concat_Oc_names(Oc_tr), Concat_Oc_names(Oc_tar), int(time.time()))), facecolor = 'white')
    return RMSEs, Params, Neurs, t
def Plot_total_RMSE_param(save = False, message_p = 1,load = False,See_best = False,NN_attributes = {},Axis_type = False, **kwargs):
    if load == True:
        Path = os.path.join(os.getcwd(), 'Cached_data', 'Total_RMSE_Ep_8_Ch_0_OcT_VarX_non_posit_same_ind.csv')
        df = pd.read_csv(Path)
        Neur = df['Neur'].values
        Param = df['Params'].values
        RMSE = df['RMSE'].values
        T = df['T'].values
    elif load == 'Hist':
        print('Loading histories')
        Paths = Get_model_path_json(**NN_attributes, return_all = True)
        Param = []
        RMSE = []
        T = []
        Neur = []
        for p in Paths:
            Train_hist = pd.read_pickle(p + '/TrainingHistory')
            Data = Get_model_attributes(p)
            #Param.append(Data.get('Param'))
            Model = Fetch_model(os.path.join(p, 'model_{}.h5'.format(Data.get('Epoch'))))
            Param.append(Model.count_params())
            RMSE.append(Train_hist['loss'][-1])
            T.append(Data.get('Training_time'))
            Neur.append(Data.get('Neur_seq'))
    else:
        Param, T, RMSE, Neur = Compute_RMSEs_Total_Param(NN_attributes = NN_attributes, **kwargs)
    fig, ax = plt.subplots()
    dim = (8.75/3*3 * 0.75, 8.75/3*2 * 0.75)
    fig.set_size_inches(dim)
    ax.scatter(Param, RMSE)
    ax2 = ax.twinx()
    #ax.spines['left'].set_color('blue')
    ax.tick_params(axis='y', colors='blue')
    ax2.scatter(Param, T, s = 10, color = 'red')
    ax2.set_ylabel("Training time(s)",color="red", fontsize = SIZE)
    #ax2.spines['right'].set_color('red')
    ax2.tick_params(axis='y', colors='red')
    ax.set_xlabel('Number of parameters', fontsize = SIZE)
    ax.set_ylabel('RMSE of NN vs reference \n integrated melt rates(Gt/yr)', fontsize = SIZE, color="blue")
    
    if Axis_type == 'Log':
        ax.set_xscale('log')
        ax2.set_xscale('log')
    if See_best:
        Bests = RMSE.argsort()[:4]
        ax.scatter(Param[Bests], RMSE[Bests])
    
    #sns.despine()
    ax.tick_params(labelsize = SIZE - 2)
    ax2.tick_params(labelsize = SIZE - 2)
    fig.tight_layout()
    if save:
        plt.savefig(os.path.join(PWD, 'Image_output', 'Tot_RMSE_param_{}'.format(int(time.time()))), facecolor = 'white')
    return Param, RMSE, Neur, T
    
def Plot_Melt_time_function(ind = 0, save = False, Nothing = False, Save_name = '',Indep = True, Display_label = True, SIZE = SIZE,
                            NN_attributes = {},Labels = [], Display_title = True,Title = None, SLC = False, Axis_type = None, **kwargs):
    li_NN = [NN_attributes] if type(NN_attributes) != list else NN_attributes
    
    Gt_ice_to_mm = 1 / 361.8
    if Indep == False:
        f = plt.figure(1)
    else:
        f = plt.figure()
    dim = (8.75/4 * 2.4, 8.75/4 * 3* 0.5)
    dim = (8.75/3*3 * 0.75, 8.75/3*2 * 0.75)
    f.set_size_inches(dim)
    RMSEs = []
    RMSE_SLC = []
    for i, NN in enumerate(li_NN):
#        RMSE, _, Melts, Modded_Melts, _, _, Oc_train, Oc_tar, *_ = Compute_RMSE_from_model_ocean(index = ind, NN_attributes = NN, **kwargs)
        Melts, Modded_Melts, RMSE, Overall_RMSE, Oc_tar = Compute_NN_oceans(NN_attributes = NN, **kwargs)
        Melts, Modded_Melts = Melts[0], Modded_Melts[0]
        RMSEs.append(RMSEs)
        Path = Get_model_path_json(**NN)[0]
        Config = Get_model_attributes(Path)
        Oc_train = Config['Dataset_train']
        x = np.arange(1, len(Modded_Melts) + 1)
        if len(Labels) >= len(li_NN):
            label = Labels[i]
        else:
            label = 'NN computed melts'
        if SLC:
            Real = np.cumsum(Melts) * (1/12) * Gt_ice_to_mm
            Mod = np.cumsum(Modded_Melts) * (1/12) * Gt_ice_to_mm
            
            Melts = Real
            Modded_Melts = Mod
            Cur_RMSE_SLC = Compute_rmse(Real, Mod)
            print(f' RMSE : {Cur_RMSE_SLC} mm')
            RMSE_SLC.append(Cur_RMSE_SLC)
        if i == 0:
            if SLC:
                lab = 'SLC'
            else:
                lab = 'melt'
            if Indep != True:
                if Labels != []:
                    plt.plot(x, Melts, label = f'{Labels[i]}')
                else:
                    plt.plot(x, Melts, label = f'Reference {lab}') #{Concat_Oc_names(Oc_tar)}')
            else:
            #plt.figure()

                plt.plot(x, Melts, label = f'Reference {lab}')# {Concat_Oc_names(Oc_tar)}')
            
            
            
        if Nothing == False:
            if i == 3:
                plt.plot(x, Modded_Melts, label = label, color = '#8c564b')
            elif i == 4:
                plt.plot(x, Modded_Melts, label = label, color = 'black')
            else:
                plt.plot(x, Modded_Melts, label = label)
            if Display_title :
                if Title == None:
                    plt.title('Modeling melt rates of {} \n (NN trained on {})'.format(
                        Concat_Oc_names(Oc_tar), Concat_Oc_names(Oc_train)))
                else:
                    plt.title(Title, fontsize = SIZE)
        else:
            if Display_title :
                if Title == None:
                    if Indep == True:
                        plt.title(f'Integrated melt rates over the iceshelf \n under {Concat_Oc_names(Oc_tar)} scenario')
                else:
                    plt.title(Title, fontsize = SIZE)


    f.tight_layout()
    if Axis_type == 'Log':
        plt.gca().set_yscale('log')
        print('Log y')
    plt.xlabel('Time (month)', fontsize = SIZE)
    if SLC:
        plt.ylabel('SLC(mm)', fontsize = SIZE)
    else:
        plt.ylabel('Mass loss(Gt/yr)', fontsize = SIZE)
        plt.ylabel('Integrated melt rate (Gt/yr)', fontsize = SIZE)
    sns.despine()
    #print(Concat_Oc_names(Oc_tar))
    #print(Concat_Oc_names(Oc_train))
    if Display_label :
        plt.legend(fontsize = SIZE - 2)
    plt.gca().tick_params(labelsize = SIZE - 2)
    print(f'{Oc_tar} : {RMSE} Gt/yr \n')
    if save:
        plt.savefig(os.path.join(PWD, 'Image_output', 'Melt_time_fct_M_{}_{}={}_Ex{}.png'.format(int(time.time()), 
                    Concat_Oc_names(Oc_train), Concat_Oc_names(Oc_tar), Save_name)),facecolor='white', bbox_inches = "tight", dpi = 300)
    if SLC:
        return RMSEs, RMSE_SLC
    return RMSEs
def Plot_Melt_to_Modded_melt(NN_attributes = {}, save = False, Save_name = '',Compute_at_ind = False,Display_label= True,Display_title = True, **kwargs):
    #RMSEs, Params, Melts, Modded_melts, Neurs, Oc_mask, Oc_tr, Oc_tar, *_ = Compute_RMSE_from_model_ocean(Compute_at_ind = Compute_at_ind, **kwargs)
    Melts, Modded_Melts, RMSEs, Overall_RMSE, Oc_tar = Compute_NN_oceans(NN_attributes = NN_attributes, **kwargs)
    fig, ax = plt.subplots()
    dim = (8.75/3*3 * 0.75, 8.75/3*2 * 0.75)
    fig.set_size_inches(dim)
    Vmin = min(np.append(Flatten_list_list(Melts), Flatten_list_list(Modded_Melts)))
    Vmax = max(np.append(Flatten_list_list(Melts), Flatten_list_list(Modded_Melts)))
    for i, (reference_melt, NN_melt)  in enumerate(zip(Melts, Modded_Melts)):
        #idx = np.where(Oc_mask == v)
        if Display_label:
            label =  f'R = {np.round(np.corrcoef(reference_melt,NN_melt)[0,1], 4)}'
        else:
            label = ''
        #ax.scatter(Modded_melts[idx], Melts[idx], s = 3, alpha = 0.6 ,label = f'Ocean{int(v)} {label}')
        ax.scatter(NN_melt, reference_melt, s = 3, alpha = 0.6 ,label = f'{Oc_tar[i]}')
        ax.legend(Oc_tar[i])
    linex, liney = [Vmin, Vmax], [Vmin, Vmax]
    ax.plot(linex, liney, c = 'red', ls = '-', linewidth = 0.8)
    ax.legend(loc = 'upper left', fontsize = SIZE - 2)
    plt.gca().tick_params(labelsize = SIZE - 2)
    plt.xlabel('NN emulated melt (Gt/yr)', fontsize = SIZE)
    plt.ylabel('Reference melt (Gt/yr)', fontsize = SIZE)
    sns.despine()
    if Display_title:
        plt.title('Modeling melt rates of {}'.format(Concat_Oc_names(Oc_tar)), fontsize = SIZE)
    plt.show()
    print(Compute_rmse(Flatten_list_list(Melts), Flatten_list_list(Modded_Melts)))
    
    if save:
        fig.savefig(os.path.join(PWD, 'Image_output', 'Line_real_Modeled_N{}_Tar{}_{}_Ex_{}'.format( 
                    Concat_Oc_names(Oc_tar), int(time.time()), Save_name)), facecolor = 'white', dpi = 300)
    return RMSEs, Melts, Modded_Melts


    
def Plot_loss_model(save = False, ind = 0,Forbid_key = [],Second_axis = [],Title = True, Desired_length = None, **kwargs):
    #Models_p, _ = Get_model_path_condition(**kwargs)
    Models_p = Get_model_path_json(**kwargs)
    fig, ax = plt.subplots()
    dim = (8.75/3*3 * 0.75, 8.75/3*2 * 0.75)
    fig.set_size_inches(dim)
    if ind >= len(Models_p):
        ind = len(Models_p) - 1
    Model_p = Models_p[ind]
    hist = pd.read_pickle(Model_p + '/TrainingHistory')
    #plt.plot(hist['loss'])
    data = Get_model_attributes(Model_p)
    for k in hist.keys():
        if k not in Forbid_key and k not in Second_axis:
            if Desired_length != None:
                ax.plot(hist[k][:Desired_length], label = k)                
            else:
                ax.plot(hist[k], label = k)
            
    if Second_axis != []:
        ax2 = ax.twinx()
        for k in Second_axis:
            if Desired_length != None:
                ax2.plot(hist[k][:Desired_length], label = k, color = 'slategrey')
            else:
                ax2.plot(hist[k], label = k, color = 'slategrey')
        #ax2.legend(loc = 'upper left')
        ax2.set_ylabel("Learning rate",color="slategrey", fontsize = SIZE)
        h1, l1 = ax.get_legend_handles_labels()
        h2, l2 = ax2.get_legend_handles_labels()
        ax.legend(h1+h2, l1+l2, loc=0, fontsize = SIZE)
        ax2.tick_params(labelsize = SIZE - 2)
    else:
        ax.legend(fontsize = SIZE, loc = 'upper right')
    print(Model_p.split('/')[-1])
    if Title:
        plt.title('Loss graph for model : {}'.format(Model_p.split('/')[-1]))
    ax.set_xlabel('Epoch', fontsize = SIZE)
    ax.tick_params(labelsize = SIZE - 2)
    sns.despine()
    plt.show()
    if save:
        fig.savefig(os.path.join(PWD, 'Image_output', 
            f"Loss_graph_M_{data['Neur_seq']}_{data['Uniq_id']}.png"), facecolor='white', bbox_inches='tight', dpi = 300)
    return hist

def Plot_Loss_against_loss(save = False, ind = 0, Desired_comparaison = [], Second_axis = [], Title = True, Mods = [], label = [], Desired_length = None, Generic_label = None, cmap = None, message = True, Dim = None, ylim = None):

    li = []
    fig, ax = plt.subplots()
    if Dim == None:
        Dim = (8.75/3*3 * 0.75, 8.75/3*2 * 0.75)
    fig.set_size_inches(Dim)
    
    prop_cycle = plt.rcParams['axes.prop_cycle']
    
    if Generic_label != None:
        label = []
    for mod in Mods:
        Model_ps = Get_model_path_json(index = ind, **mod)
        for Model_p in Model_ps:
            if message == True:
                print(Model_p)
            data = Get_model_attributes(Model_p)
            Hist = pd.read_pickle(Model_p + '/TrainingHistory')
            Cur_li = []
            for k in Hist.keys():
                if k in Desired_comparaison:
                    if Desired_length == None:
                        Cur_li.append(Hist[k])
                    else:
                        Cur_li.append(Hist[k][:Desired_length])
            if Generic_label != None:
                Config = Get_model_attributes(Model_p)
                label.append(Config.get(Generic_label))
            li.append(Cur_li)
    if message == True:
        print(label)
    indexes = np.unique(label, return_index = True)[1]
    Uniqs = np.array([label[i] for i in sorted(indexes)])
    if cmap == None:
        colors = prop_cycle.by_key()['color']
    else:
    #colors = plt.cm.rainbow(np.linspace(0, 1, n))
        colors = plt.get_cmap(cmap)(np.linspace(0, 1, len(Uniqs)))
    #plt.plot(x, i * y, color=colors[i])
    Plotted_labels = []
    for i, Data in enumerate(li):
        if type(Data[0]) != list:
            ax.plot(Data, label = Desired_comparaison[i])
        else:
            for j,d in enumerate(Data):
                #print(d)
                if label == []:
                    ax.plot(d, label = f'{Desired_comparaison[j]}')
                else:
                    if label[i] not in Plotted_labels:
                        Plotted_labels.append(label[i])
                        ax.plot(d, label = f'{label[i]}', c = colors[int(np.where(Uniqs == label[i])[0])])
                    else:
                        ax.plot(d, c = colors[int(np.where(Uniqs == label[i])[0])])
                    
    ax.legend(fontsize = SIZE-3)
    ax.tick_params(labelsize = SIZE - 2)
    ax.set_xlabel('Epoch', fontsize = SIZE)
    sns.despine()
    if ylim != None:
        ax.set_ylim(top=ylim)
    if save:
        fig.savefig(os.path.join(PWD, 'Image_output', 
            f"Multiple_Loss_graph_M_{int(time.time())}.png"), facecolor='white', bbox_inches='tight', dpi = 300)
    
#    if Second_axis != []:
#        ax2 = ax.twinx()
#        for k in Second_axis:
#            ax2.plot(hist[k], label = k, color = 'slategrey')
        #ax2.legend(loc = 'upper left')
#        ax2.set_ylabel("Learning rate",color="slategrey")
#        h1, l1 = ax.get_legend_handles_labels()
#        h2, l2 = ax2.get_legend_handles_labels()
#        ax.legend(h1+h2, l1+l2, loc=0)
        
        
        
        
def Plotting_side_by_side(ind = 0,save = False, **kwargs):
    '''
    Deprecated for now due to better plotting function below. (Plot N side)
    '''
    
    
    Dataset, name, T, Oc_tar, Oc_tr = Compute_dataset_for_plot(ind = ind, **kwargs)
    cmap = plt.get_cmap('seismic')
    fig, axes = plt.subplots(nrows=1, ncols=2, figsize=(10, 4))
    ax1, ax2 = axes
    vmin = float(min(Dataset.Mod_melt.min(), Dataset.meltRate.min()))
    vmax = float(max(Dataset.Mod_melt.max(), Dataset.meltRate.max()))
    norm = MidpointNormalize( midpoint = 0 )
    a = Dataset.Mod_melt.plot(ax = ax1,add_colorbar=False, robust=False, vmin = vmin, vmax = vmax, cmap = cmap, norm = norm, extend='min')
    ax1.set_title('Modeled melt rates'.format(T))
    Dataset.meltRate.plot(ax = ax2, add_colorbar=False, robust=False, vmin = vmin, vmax = vmax, cmap = cmap, norm = norm, extend='min')
    ax2.set_title('"Real" melt rates'.format(T))
    plt.suptitle('Modeled vs "real" melt rates for t = {} month \n (NN trained on {} applied to {})'.format(T, Concat_Oc_names(Oc_tr), Oc_tar), y=1.035)
    #plt.tight_layout()
    cbar = plt.colorbar(a, cmap = cmap, ax = axes, label = 'Melt rate (m/s)', location = 'bottom', extend='both', fraction=0.16, pad=0.15)#, shrink = 0.6
    if save:
        fig.savefig(os.path.join(PWD, 'Image_output', 
            'Side_side_M_{}_t={}.png'.format(name, T)), facecolor='white', bbox_inches='tight')
    return np.array([Dataset.Mod_melt.min(), Dataset.meltRate.min()]), np.array([Dataset.Mod_melt.max(), Dataset.meltRate.max()])


def Compute_dataset_for_plot(ind, Epoch = 4, Ocean_trained = 'Ocean1', Type_trained = 'COM_NEMO-CNRS', 
             Ocean_target = 'Ocean1', Type_tar = 'COM_NEMO-CNRS', message = 1, Compute_at_t = 1, T = 0, Extra_n = [], Exact = 1):
    Models_p, _ = Get_model_path_condition(Epoch, Ocean_trained, Type_trained, Exact = Exact, Extra_n = Extra_n)
    if ind >= len(Models_p):
        ind = len(Models_p) - 1
    Model_p = Models_p[ind]
    print(Model_p)
    Model_name = Model_p.split('/')[-1]
    EpochM, Neur, Choix = re.findall('Ep_(\d+)_N_(\w+)_Ch_(\d+)', Model_name)[0]
    #Dataset = Compute_datas(Model_p, Choix, Ocean_target, Type_tar, Epoch, message, Compute_at_t = 1, T = T)
    Dataset, _ = Compute_NN_oceans(NN_attributes = {}, Ocean_target = Ocean_target, T = T, NN_path = Model_p)
    if Dataset != None:
        return Dataset, Model_name, T, Ocean_target, Ocean_trained
    else:
        print('Not found')
        
class MidpointNormalize(mcolors.Normalize):
    def __init__(self, vmin=None, vmax=None, midpoint=None, clip=False):
        self.midpoint = midpoint
        mcolors.Normalize.__init__(self, vmin, vmax, clip)

    def __call__(self, value, clip=None):
        v_ext = np.max( [ np.abs(self.vmin), np.abs(self.vmax) ] )
        x, y = [-v_ext, self.midpoint, v_ext], [0, 0.5, 1]
        return np.ma.masked_array(np.interp(value, x, y))
    
def Concat_Oc_names(Strs):
    if type(Strs) == list:
        return 'Ocean' + '-'.join(i[-1] if 'Ocean' in i else re.findall('CPL_(\w+)_rst', i)[0] for i in Strs)
    else:
        return Strs
    
#def Get_model_path_json(Var, Epoch = 4, Ocean = 'Ocean1', Type_trained = 'COM_NEMO-CNRS', 
#Exact = 0, Choix = 0, Neur = None)
def plot_N_side(Model_fn, Attribs : list, ind = 0, Oc_tar = 'Ocean1'
        ,Type_tar = 'COM_NEMO-CNRS', message = 0, T = [0], save = False, Title = []):
    
    Titles = {"iceDraft" : "iceD", "temperatureYZ" : "T-YZ", "salinityYZ" : "S-YZ", }
    s_to_yr = 3600 * 24 * 365
    cmap = plt.get_cmap('seismic')
    nTime = len(list(T))
    fig, axes_t = plt.subplots(nrows=nTime, ncols=len(Attribs) + 1, figsize=(10 * len(Attribs), 3 * nTime), sharex=True, sharey=True)
    plt.subplots_adjust(hspace = 0.15)
    for ind_t, t in enumerate(T):
        if nTime == 1:
            axes = axes_t
        else:
            axes = axes_t[ind_t]
        Datasets, Vars = [], []
        for Index, Att in enumerate(Attribs):
            Files = Get_model_path_json(**Att)
            #print(Files)
            File = Files[ind]
            Config = Get_model_attributes(File)
            Choix, Epoch = Config['Choix'], Config['Epoch']
#(Model,Model_path, Choix, Ocean_target, Type_tar, Epoch, message,
            Model = Fetch_model(os.path.join(File, f'model_{Epoch}.h5'))
            Dataset = Compute_datas(Model, File, Choix, Oc_tar, 
                            Type_tar, Epoch, message, Compute_at_t = t, Method = Config.get('Method_data'))
            Dataset[['Mod_melt', 'meltRate']] = Dataset[['Mod_melt', 'meltRate']] * s_to_yr
            Datasets.append(Dataset)
            Vars.append(Config['Var_X'])
        mins, maxs = [], []
        for d in Datasets:
            mins.append(float(d.Mod_melt.min()))
            maxs.append(float(d.Mod_melt.max()))
        vmin = min(mins)
        vmax = max(maxs)
        norm = MidpointNormalize( midpoint = 0 )
        for i, d in enumerate(Datasets):
            if i == 0:
                A = d.Mod_melt.plot(ax = axes[0],add_colorbar=False, robust=False, vmin = vmin, vmax = vmax, cmap = cmap, norm = norm, extend='min')
            else:
                d.Mod_melt.plot(ax = axes[i], add_colorbar=False, robust=False, vmin = vmin, vmax = vmax, cmap = cmap, norm = norm, extend='min')
            if i == 0:
                
                axes[i].set_ylabel(f"T = {t} month")
            else:
                axes[i].set_xlabel('')
                axes[i].set_ylabel('')
            if ind_t == 0:
                axes[i].set_title( f" Var trained : {'_'.join( [ Titles[n] for n in Vars[i] if Config.get('Method_data') == None])} \n {Title[i] if Title != [] else ''}")
                #axes[i].set_title(f"{} = month", loc = 'left')
            else:
                axes[i].set_title('')
            if ind_t != 0 or i != 0:
                axes[i].set_xlabel('')
        d.meltRate.plot(ax = axes[-1], add_colorbar=False, robust=False, vmin = vmin, vmax = vmax, cmap = cmap, norm = norm, extend='min')
        axes[-1].set_title('')
        axes[-1].set_ylabel('')
        axes[-1].set_xlabel('')

        ticks = np.linspace(vmin, vmax, 5, endpoint=True)
        cbar = plt.colorbar(A, cmap = cmap, ax = axes, label = 'Melt rate (m/yr)', location = 'right', extend='both', anchor = (-0.3, 0), ticks = ticks)#, fraction=0.16, pad=0.15)
    #return Datasets
    #fig.supxlabel('x')
    #fig.supylabel('y')
    fig.text(0.45, 0.095, 'X', ha='center')
    fig.text(0.095, 0.5, 'Y', va='center', rotation='vertical')
    if save:
        fig.savefig(os.path.join(PWD, 'Image_output', 
            'N_side_M_{}_{}.png'.format(Oc_tar, int(time.time()))), facecolor='white', bbox_inches='tight')
    return Datasets

def plot_N_side_exp(Model_fn, Attribs : list, 
        message = 0, T = [0], save = False, Title = [], sharing = False, Only_reference = False, One_profile = False, Single_type = 'Mean', Display_label = True, Dimensions = None, size = None, **kwargs):
    Titles = {"iceDraft" : "iceD", "temperatureYZ" : "T-YZ", "salinityYZ" : "S-YZ", }
    s_to_yr = 3600 * 24 * 365
    cmap = plt.get_cmap('seismic')
    if One_profile:
        nTime = 1
    else:
        nTime = len(list(T))
    size = len(Attribs) + 1
    if Only_reference:
        size = 1
    if Dimensions != None:
        x, y = Dimensions
    else:
        x, y = 10, 3
        
    if sharing == True:
        fig, axes_t = plt.subplots(nrows=nTime, ncols=size, figsize=(x * len(Attribs), y * nTime), sharex=True, sharey=True)
    else:
        if message == True:
            print(sharing)
        fig, axes_t = plt.subplots(nrows=nTime, ncols=size, figsize=(x * len(Attribs), y * nTime), sharex=sharing, sharey=sharing)
   # else:
#        fig, axes_t = plt.subplots(nrows=nTime, ncols=size, figsize=(10 * len(Attribs), 3 * nTime), sharex=False, sharey=False)
    plt.subplots_adjust(hspace = 0.15)
    Datasets = []
    for Index, Att in enumerate(Attribs):
        File = Get_model_path_json(**Att)[0]
        Config = Get_model_attributes(File)
        Choix, Epoch = Config['Choix'], Config['Epoch']
#(Model,Model_path, Choix, Ocean_target, Type_tar, Epoch, message,
        Model = Fetch_model(os.path.join(File, f'model_{Epoch}.h5'))
        if message == True:
            print(f"Started computing for {File}", end = "/r")
        if One_profile:
            #Dataset = Compute_datas(Model, File, Choix, Oc_tar, 
            #            Type_tar, Epoch, message, Compute_at_t = 'ALL', Method = Config.get('Method_data'))
            Dataset, Ocean_target = Compute_NN_oceans(NN_attributes = Att, T = 'ALL', **kwargs)
            Dataset = Dataset[0]
            if Single_type == 'Sum':
                Modded = Dataset.Mod_melt.sum(dim = 'date', skipna= True)
                Real = Dataset.meltRate.sum(dim = 'date', skipna= True)
            if Single_type == 'Mean':
                Modded = Dataset.Mod_melt.mean(dim = 'date', skipna= True)
                Real = Dataset.meltRate.mean(dim = 'date', skipna= True)
            del Dataset
            Dataset = xr.Dataset()
            Dataset = Dataset.assign(Mod_melt = Modded)
            Dataset = [ Dataset.assign(meltRate = Real) ]
        else:
            
            #Dataset = Compute_datas(Model, File, Choix, Oc_tar, 
            #            Type_tar, Epoch, message, Compute_at_t = T, Method = Config.get('Method_data'))
            Dataset = Compute_NN_oceans(NN_attributes = Att, T = T, **kwargs)[0][0]
            print(Dataset)
        Datasets.append(Dataset)
        if message == True:
            print(f"Finished computing for {File}", end = "\r")
    #return Datasets
    
    Plotting_grid = []
    VMins = []
    VMaxs = []
    for Mods in zip(*Datasets):
        Current_grid = []
        Mins, Maxs = [], []
        for Mod in Mods:
            Mod['Mod_melt'] = Mod['Mod_melt'] * s_to_yr
            Mod['meltRate'] = Mod['meltRate'] * s_to_yr
            Current_grid.append(Mod)
            Mins.append(float(Mod.Mod_melt.min()))
            Maxs.append(float(Mod.Mod_melt.max()))
        Plotting_grid.append(Current_grid)
        VMins.append(min(Mins))
        VMaxs.append(max(Maxs))
    for t, Datasets in enumerate(Plotting_grid):
        if nTime == 1:
            axes = axes_t
        else:
            axes = axes_t[t]
        norm = MidpointNormalize( midpoint = 0 )
        vmin, vmax = VMins[t], VMaxs[t]
        if Only_reference:
            d = Datasets[-1]
            d = d.assign_coords({'x':  d.x/1000,
                             'y':  d.y/1000
                            })
            d.meltRate.plot(ax = axes, add_colorbar=True, robust=False, cmap = cmap, norm = norm, extend='min')
            continue
        for i, d in enumerate(Datasets):
            d = d.assign_coords({'x':  d.x/1000,
                             'y':  d.y/1000
                            })
            if i == 0:
                A = d.Mod_melt.plot(ax = axes[0],add_colorbar=False, robust=False, vmin = vmin, vmax = vmax, cmap = cmap, norm = norm, extend='min')
                
            else:
                d.Mod_melt.plot(ax = axes[i], add_colorbar=False, robust=False, vmin = vmin, vmax = vmax, cmap = cmap, norm = norm, extend='min')

            if i == 0:
                if One_profile == True:
                    if Display_label:
                        axes[i].set_ylabel('y(km)', fontsize = SIZE-2)
                        axes[i].set_xlabel('x(km)', fontsize = SIZE-2)
                    else:
                        #axes[i].set_xticklabels([])
                        #axes[i].set_yticklabels([])
                        axes[i].set_xlabel('')
                        axes[i].set_ylabel('')
                        
                    axes[i].tick_params(labelsize = SIZE - 2)
                else:
                    axes[i].set_ylabel(f"T = {T[t]} month")
                    axes[i].set_xlabel('')
            else:
                axes[i].set_xlabel('')
                axes[i].set_ylabel('')
                axes[i].set_xticklabels([])
                axes[i].set_yticklabels([])
                axes[i].tick_params(labelsize = SIZE - 2)
            if Title != []:
                if t == 0:
                    axes[i].set_title(f"{Title[i]}", fontsize = SIZE)
                    pass
                #axes[i].set_title( f" Var trained : {'_'.join( [ Titles[n] for n in Vars[i] if Config.get('Method_data') == None])} \n {Title[i] if Title != [] else ''}")
                #axes[i].set_title(f"{} = month", loc = 'left')
                else:
                    axes[i].set_title('')
            if t != 0 or i != 0:
                axes[i].set_xlabel('')
        d.meltRate.plot(ax = axes[-1], add_colorbar=False, robust=False, vmin = vmin, vmax = vmax, cmap = cmap, norm = norm, extend='min')
        if Title != [] and t == 0:
            axes[-1].set_title(f"{Title[i+1]}", fontsize = SIZE)
        else:
            axes[-1].set_title('')
        axes[-1].set_xticklabels([])
        axes[-1].set_yticklabels([])
        axes[-1].tick_params(labelsize = SIZE - 2)
        axes[-1].set_ylabel('')
        axes[-1].set_xlabel('')
        ticks = np.round(np.linspace(vmin, vmax, 5, endpoint=True), decimals = 1)
        #divider = make_axes_locatable(axes[-1])
        #cax = divider.append_axes('right', size = '5%')
        cbar = plt.colorbar(A, cmap = cmap, ax = axes, label = 'Melt rate (m/yr)', location = 'right', extend='both', anchor = (-0.3, 0), ticks = ticks)#, fraction=0.16, pad=0.15)
        #cbar = plt.colorbar(A, cmap = cmap, ax = axes, label = 'Melt rate (m/yr)', extend='both', anchor = (-0.3, 0), ticks = ticks, cax = cax)#, fraction=0.16, pad=0.15)
        #tick_locator = ticker.MaxNLocator(nbins = 4)
        #cbar.locator = tick_locator
        #cbar.ax.yaxis.set_major_locator(matplotlib.ticker.AutoLocator())
        #cbar.update_ticks()
        cbar.ax.tick_params(labelsize=SIZE-2)
        if Dimensions == None:
            cbar.set_label(label = 'Melt rate (m/yr)', size = SIZE)
        else:
            cbar.set_label(label = 'Melt rate (m/yr)', size = SIZE)
    #fig.supxlabel('x')
    #fig.supylabel('y')
    #fig.text(0.45, 0.095, 'X', ha='center')
    #fig.text(0.095, 0.5, 'Y', va='center', rotation='vertical')
    if Dimensions == None:
        sns.despine()
    if save:
        fig.savefig(os.path.join(PWD, 'Image_output', 
            'N_side_M_{}_{}.png'.format(Concat_Oc_names(Ocean_target), int(time.time()))), facecolor='white', bbox_inches='tight', dpi = 300)
    return Datasets

def Plot_Models_per_epoch(NN_attrib = {}, Neurones = [],Attribs = [], **kwargs):

    Dicts = []
    RMSEs = []
    Ts = []
    Params = []
    Neurs = []
    for Neur in Neurones:
        Models = Get_model_path_json(Neur = Neur, **NN_attrib)
        for Mod_p in Models:
            Sub_mods = glob.glob(os.path.join(Mod_p, ''))
            for Mod in Sub_mods:
                Param, T, RMSE, Neurs = Compute_RMSEs_Total_Param(Models_paths = Mod, **kwargs)
                Name = Mod.split('/')[-1]
                Epoch = re.findall('model_(\d+).h5', Name)[0]
                Config = Get_model_attributes(Mod_p)
                Dict = {}
                for Attrib in Attribs:
                    Dict[Attrib] = Config[Attrib]
                Dicts.append(Dict)
                RMSEs.append(RMSE)
                Params.append(Param)
                

def Plot_spatial_RMSE(NN_attrib, Oc_tar = 'Ocean1', ind = 0,
        Type_tar = 'COM_NEMO-CNRS', message = 0, save = False, Title = [], Type = 'Mean'):
    #Titles = {"iceDraft" : "iceD", "temperatureYZ" : "T-YZ", "salinityYZ" : "S-YZ"}
    s_to_yr = 3600 * 24 * 365
    if Type == 'CumSum':
        fig, axes = plt.subplots(nrows=1, ncols=2, figsize=(10, 3), sharex=True, sharey=True)
    else:
        fig, ax = plt.subplots()
    
    cmap = plt.get_cmap('seismic')
    
    Datasets = []
    File = Get_model_path_json(index = ind, **NN_attrib)[0]
    Config = Get_model_attributes(File)
    Choix, Epoch = Config['Choix'], Config['Epoch']
    Model = Fetch_model(os.path.join(File, f'model_{Epoch}.h5'))
    print(f"Started computing for {File}")
    #Dataset = Compute_datas(Model, File, Choix, Oc_tar, 
     #               Type_tar, Epoch, message, Compute_at_t = 'ALL', Method = Config.get('Method_data'))
    #Compute_NN_oceans(NN_attributes, Ocean_target : list, Type_target = 'COM_NEMO-CNRS', T = None, shuffle = None, NN_path = None, message = True, recursive_t = False)
    Dataset = Compute_NN_oceans(NN_attributes = NN_attrib, T = 'ALL', Ocean_target = Oc_tar)[0][0]
    print(f"Finished computing for {File}")
    if Type == 'Mean':
        Diff = (Dataset.Mod_melt - Dataset.meltRate).mean(dim = 'date', skipna= True)
    elif Type == 'Abs_mean':
        Diff = abs(Dataset.Mod_melt - Dataset.meltRate).mean(dim = 'date', skipna= True)
    if Type != 'CumSum':
        Diff = Diff.assign_coords({'x':  Diff.x/1000,
                                 'y': Diff.y/1000
                                }) * s_to_yr
        vmin = float(Diff.min())
        vmax = float(Diff.max())
        norm = MidpointNormalize( midpoint = 0 )
        #norm=mcolors.TwoSlopeNorm(vmin=vmin, vcenter=0., vmax=vmax)
        ticks = np.linspace(vmin, vmax, 5, endpoint=True)
        A = Diff.plot(ax = ax, add_colorbar=False, robust=False, cmap = cmap, norm = norm, vmin = vmin, vmax = vmax,extend='both')
        cbar = plt.colorbar(A, cmap = cmap, label = 'Melt rate (m/yr)', location = 'right', extend='both', anchor = (0, -0.2),
        norm = norm, ticks = ticks)
        #cbar = plt.colorbar(A, cmap = cmap, label = 'Melt rate (m/yr)', location = 'right', extend='both', anchor = (0, -0.2))#, ticks = ticks)
    
    else:
        Summed_melts = Dataset.meltRate.sum(dim = 'date', skipna= True)
        Summed_melts = Summed_melts.assign_coords({'x':  Summed_melts.x/1000,
                         'y': Summed_melts.y/1000
                        }) * s_to_yr
        Summed_modded_melts = Dataset.Mod_melt.sum(dim = 'date', skipna= True)
        Summed_modded_melts = Summed_modded_melts.assign_coords({'x':  Summed_modded_melts.x/1000,
                         'y': Summed_modded_melts.y/1000
                        }) * s_to_yr
        vmax = float(Summed_modded_melts.max())
        vmin = float(Summed_modded_melts.min())
        norm = MidpointNormalize( midpoint = 0 )
        ticks = np.linspace(vmin, vmax, 5, endpoint=True)
        
        A = Summed_modded_melts.plot(ax = axes[0],add_colorbar=False, robust=False, vmin = vmin, vmax = vmax, cmap = cmap, norm = norm, extend='min')
                
        Summed_melts.plot(ax = axes[1], add_colorbar=False, robust=False, cmap = cmap, norm = norm, vmin = vmin, vmax = vmax,extend='both')
        
        cbar = plt.colorbar(A, cmap = cmap, label = 'Melt rate (m/yr)', location = 'right', extend='both', anchor = (0, -0.2),
        norm = norm, ticks = ticks)
        
    Oc_trained = Concat_Oc_names(Config.get('Dataset_train'))
    if save:
        fig.savefig(os.path.join(PWD, 'Image_output', 
            'Spatial_error_{}_M_{}_{}_{}.png'.format(Type, Oc_tar,Oc_trained, Config.get('Uniq_id'))), facecolor='white', bbox_inches='tight')
    
    return Dataset

def Plot_generic_benchmark(Path, xlabel = None, ylabel = None):
    fig, ax = plt.subplots()
    df = pd.read_csv(Path)
    Var_interest = df.columns[0]
    
    Mean_df = df.groupby(Var_interest).mean()
    #return Mean_df 
    ax.plot(Mean_df.index, Mean_df.Overall_RMSE)
    if xlabel != None:
        ax.set_xlabel(xlabel)
    if ylabel != None:
        ax.set_ylabel(ylabel)
    
def Plot_spatial_selection(Name:str, cmap = 'seismic', box = False, Desired_box = [], save = False):
    fig, ax = plt.subplots()
    Path = os.path.join(PWD, 'Cached_data', 'Data_for_spatial_cutting/')
    All_files = glob.glob(Path + '*.nc')
    selected_file = Path + f'{Name}.nc'
    cmap = plt.get_cmap('seismic')
    if selected_file in All_files:
        Array = xr.open_dataarray(selected_file)
        Sec_array = Array.copy()
        vmin = float(Array.min())
        vmax = float(Array.max())
        
        if box != False:
            xmin, xmax = Desired_box[0:2]
            ymin, ymax = Desired_box[2:4]
            Array_xmin = float(Array.x.min())
            Array_ymin = float(Array.y.min())
            #Array[dict(x=slice(Convert_coordinate(Array_xmin, xmin), Convert_coordinate(Array_xmin, xmax)), 
            #           y=slice(Convert_coordinate(Array_ymin, ymin), Convert_coordinate(Array_ymin, ymax)))] = np.nan
            if box == 'Full':
                Array = xr.where((Array.x >= xmin) & (Array.x <= xmax) & (Array.y >= ymin) & (Array.y <= ymax), np.nan, Array)
            elif box == 'Partial':
                fill = -9999
                Array = xr.where( (Array.x >= find_nearest(Array.x, xmin)) & (Array.x <= find_nearest(Array.x, xmax)) & (Array.y == find_nearest(Array.y, ymax)), fill, Array)

            # Lower boundary x 
                Array = xr.where( (Array.x >= find_nearest(Array.x, xmin)) & (Array.x <= find_nearest(Array.x, xmax)) & (Array.y == find_nearest(Array.y, ymin)), fill, Array)

            # Upper boundary y 
                Array = xr.where( (Array.y >= find_nearest(Array.y, ymin)) & (Array.y <= find_nearest(Array.y, ymax)) & (Array.x == find_nearest(Array.x, xmax)), fill, Array)

            # Lower boundary y 
                Array = xr.where( (Array.y >= find_nearest(Array.y, ymin)) & (Array.y <= find_nearest(Array.y, ymax)) & (Array.x == find_nearest(Array.x, xmin)), fill, Array)
                
        norm = MidpointNormalize( midpoint = 0 )
        Array = Array.assign_coords({'x':  Array.x/1000,
                                 'y': Array.y/1000
                                })
        Array.plot(x = 'x', cmap = cmap, vmin = vmin, vmax = vmax, norm = norm)
        if save:
            fig.savefig(os.path.join(PWD, 'Image_output', 'Sliced_image_{}_{}.png'.format(Name, int(time.time()))), facecolor='white', bbox_inches='tight')
            
    
        return Sec_array
    else:
        print('File not found')
        return None
    
def Convert_coordinate(min_val, Coord:int, Resol = 2000):
    return int((Coord - min_val)/Resol)

def find_nearest(array, value):
    array = np.asarray(array)
    idx = (np.abs(array - value)).argmin()
    return array[idx]


def Variable_benchmark_plotting(NN_attributes = {}, **kwargs):
    Dataset, Ocean_target = Compute_NN_oceans(NN_attributes = NN_attributes, T = 'ALL', **kwargs)
    return Dataset

