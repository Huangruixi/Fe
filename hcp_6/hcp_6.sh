#!/bin/bash
######### VASP PATH #################
VASP_PATH=~/vasp6/bin
#####################################

######### VASP MODE ##################
## You can use standard version (vasp) or gamma version
VM=vasp_gam
######################################
export PATH=${VASP_PATH}:$PATH

source /WORK/app/toolshs/cnmodule.sh
module purge
module load MPI/Intel/MPICH/3.2-icc2018-dyn fftw/3.3.4-default
module load hdf5/1.10.4/02-CF-18

yhrun -N $SLURM_NNODES -n $SLURM_NTASKS ${VM} 
