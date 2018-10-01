# nix-shell -p cmake cunit hdf5 openblasCompat --command "./build.sh"
export OPENBLAS_ROOT=`echo $buildInputs | tr ' ' '\n' | grep openblas`
export HDF5_ROOT=`echo $buildInputs | tr ' ' '\n' | grep hdf5`
mkdir build 2> /dev/null
cd build
echo "blas" $OPENBLAS_ROOT
echo "hdf5" $HDF5_ROOT
file $OPENBLAS_ROOT/lib/libopenblas.so
ls $OPENBLAS_ROOT
cmake ..
make

