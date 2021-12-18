# MATLAB Path
MATLAB_DIR=$HOME/MATLAB
MATLAB_VER=R2021b
MATLAB_BIN=$MATLAB_DIR/$MATLAB_VER/bin # MATLAB binaries

# Toolchain Paths
TOOLCHAIN_DIR=$HOME/Toolchains
FPGA_TOOLCHAIN=oss-cad-suite
RISCV_TOOLCHAIN=riscv

# Toolchain binaries
FPGA_BIN=$TOOLCHAIN_DIR/$FPGA_TOOLCHAIN/bin
RISCV_BIN=$TOOLCHAIN_DIR/$RISCV_TOOLCHAIN/bin

# Python PIP scripts
PIP_BIN=$HOME/.local/bin


# Update PATH
export PATH=$PIP_BIN:$FPGA_BIN:$RISCV_BIN:$MATLAB_BIN:$PATH