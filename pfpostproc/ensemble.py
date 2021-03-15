import argparse
import xarray as xr
from pfpostproc.workflow import *
from datetime import datetime,timedelta

def zarr_write_ds(ds):
    ds.to_zarr(
        store='/home/ltelfer/scratch/pf_southForkSalmon/zarr/',
        mode='a',
        group= f'ensemble/{scenario}/H{h}/B{batch}',
        compute=True,
        consolidated=False);

def domain_workflow(rundir,runname,tcoords):
    print('getting domain...')
    domain = get_domain(rundir,runname)
    domain['t'] = tcoords
    return domain

def pf_workflow(rundir,runname,domain,tcoords):
    print('getting parflow...')
    pf = get_pf(rundir,runname,domain)
    print('writing parflow to zarr store...')
    pf['t'] = tcoords
    zarr_write_ds(pf.expand_dims({'b':[bval],'c':[scenario],'h':[hval]}))
    return pf

def calc_workflow(pf,domain,tcoords):
    print('calculating variables...')
    calcs = get_calc(pf,domain)
    print('writing calculations to zarr store...')
    calcs['t'] = tcoords
    zarr_write_ds(calcs.expand_dims({'b':[bval],'c':[scenario],'h':[hval]}))

def clm_workflow(rundir,runname,domain,tcoords):
    print('getting clm...')
    clm = get_clm(args.rundir,args.runname,domain)
    print('writing clm to zarr store...')
    clm['t'] = tcoords
    zarr_write_ds(clm.expand_dims({'b':[bval],'c':[scenario],'h':[hval]}))
    
def main():
    
    # get datetime coords
    tcoords = np.arange(datetime.strptime('2005-10-01 00:00', "%Y-%m-%d %H:%M"),
                        datetime.strptime('2006-10-01 00:00', "%Y-%m-%d %H:%M"),
                        timedelta(hours=1)).astype(datetime)
    
    domain = domain_workflow(args.rundir,args.runname,tcoords)
    pf = pf_workflow(args.rundir,args.runname,domain,tcoords)
    calc_workflow(pf,domain,tcoords)
    clm_workflow(args.rundir,args.runname,domain,tcoords)
    
    print('SUCCESS!!!')

if __name__ == '__main__':
    
    # command line arguments
    parser = argparse.ArgumentParser()
    parser.add_argument('-n','--runname',type=str,required=True)
    parser.add_argument('-d','--rundir',type=str,default='./')
    args = parser.parse_args()
    
    batch = args.runname[1:3]
    scenario = args.runname[3]
    h = args.runname[4:6]
    bval = int(batch)
    hval = float(h)/10
    
    # postprocessing and write to file
    main()