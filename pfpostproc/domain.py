import argparse
import xarray as xr
from pfpostproc.workflow import *
from datetime import datetime,timedelta

def zarr_write_domain(ds):
    ds.to_zarr(
        store='/home/ltelfer/scratch/pf_southForkSalmon/zarr/',
        mode='a',
        group='domain',
        compute=True,
        consolidated=False);

def domain_workflow(rundir,runname,tcoords):
    print('getting domain...')
    domain = get_domain(rundir,runname)
    domain['t'] = tcoords
    print('writing domain to zarr store...')
    zarr_write_domain(domain)
    print('getting wrf forcings...')
    wrf = get_wrf(domain)
    print('writing wrf to zarr store...')
    wrf['t'] = tcoords
    zarr_write_domain(wrf)
    return domain
    
def main():
    
    # get datetime coords
    tcoords = np.arange(datetime.strptime('2005-10-01 00:00', "%Y-%m-%d %H:%M"),
                        datetime.strptime('2006-10-01 00:00', "%Y-%m-%d %H:%M"),
                        timedelta(hours=1)).astype(datetime)
    
    domain = domain_workflow(args.rundir,args.runname,tcoords)
    
    print('SUCCESS!!!')

if __name__ == '__main__':
    
    # command line arguments
    parser = argparse.ArgumentParser()
    parser.add_argument('-n','--runname',type=str,required=True)
    parser.add_argument('-d','--rundir',type=str,required=True)
    args = parser.parse_args()
    
    # postprocessing and write to file
    main()