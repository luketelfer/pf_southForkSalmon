from glob import glob
import xarray as xr

def open_controls(c=''):
    '''
    dataset containing control runs
    (c) specify controls:    e.g. '[U,H]'
    '''
    path = '/scratch/ltelfer/pf_southForkSalmon/pfout.zarr/ctr/'
    cgroups = glob(path + c + '*/')
    ds = xr.open_mfdataset(cgroups,engine='zarr')
    return ds

def open_domain():
    '''
    dataset containing domain parameters and wrf forcings
    '''
    path = '/scratch/ltelfer/pf_southForkSalmon/pfout.zarr/dom/'
    ds = xr.open_mfdataset(path,engine='zarr')
    return ds

def open_experiments(c='',h='',b=''):
    '''
    dataset containing experimental runs
    (c) specify scenarios:      e.g. '[A,C]'
    (h) specify hvals:          e.g. '[1,3,9]'
    (b) specify single batch:   e.g. '05'
    '''
    path = '/scratch/ltelfer/pf_southForkSalmon/pfout.zarr/exp/'
    cgroups = glob(path + c + '*/')
    hgroups = [glob(c + 'h0' + h + '*/') for c in cgroups]
    bgroups = [glob(y + 'b' + b + '*/') for y in [x for h in hgroups for x in h]]
    ds = xr.open_mfdataset(bgroups,engine='zarr')
    return ds