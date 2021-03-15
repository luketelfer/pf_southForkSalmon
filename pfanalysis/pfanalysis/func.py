import glob
import xarray as xr

def open_ensemble():
    # in development
    ensemble = [[glob.glob(s + '*/') for s in glob.glob(b + '*/')] for b in glob.glob('data/ensemble/*/')]
    domain = ['data/domain']
    nested = [ensemble,domain]
    ds = xr.open_mfdataset(nested,engine='zarr')
    return ds

def open_controls():
    # in development
    controls = glob.glob('data/control/*/')
    domain = ['data/domain']
    nested = [controls,domain]
    ds = xr.open_mfdataset(nested,engine='zarr')
    return ds

    