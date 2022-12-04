mkdir -p ~/pkg
cd ~/pkg
wget https://download.pytorch.org/libtorch/cpu/libtorch-shared-with-deps-1.13.0%2Bcpu.zip
unzip libtorch-shared-with-deps-1.13.0+cpu.zip

export LIBTORCH_HOME=~/pkg/libtorch
export LD_LIBRARY_PATH=$LIBTORCH_HOME/lib:$LD_LIBRARY_PATH  # 动态库目录
export LIBRARY_PATH=$LIBTORCH_HOME/lib:$LIBRARY_PATH        # 静态库目录

# gcc,g++ find .h in dir
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:$LIBTORCH_HOME/include:$LIBTORCH_HOME/include/torch/csrc/api/include
export C_INCLUDE_PATH=$LIBTORCH_HOME/include:$C_INCLUDE_PATH

