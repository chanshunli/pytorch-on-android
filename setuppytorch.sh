#!/bin/bash
pacman -S base-devel
pacman -S git
pacman -S python-pip
pacman -S cmake
# pacman -S tmux # 用不了
pacman -S zsh

# https://docs.anaconda.com/anaconda/install/linux
pacman -Sy libxau libxi libxss libxtst libxcursor libxcomposite libxdamage libxfixes libxrandr libxrender mesa-libgl  alsa-lib libglvnd

pip install numpy  pandas jupyter

git clone http://github.com/pytorch/pytorch
cd pytorch
git submodule update --init --recursive
pip install -U setuptools
pip install -r requirements.txt
python setup.py  install # python setup.py build_deps install
cd ..


## 最后再root环境+zsh环境下执行成功了:
python setup.py  install

## root + zsh + 目录/data/data/com.termux/files/home
pacman -S  python-imaging # ok
pip install Pillow # ok 
pip install torchvision # ok

# https://www.codelast.com/%E5%8E%9F%E5%88%9B-%E5%9C%A8%E6%A0%91%E8%8E%93%E6%B4%BE3%E4%B8%8A%E8%B7%91ell%E7%9A%84demo%E6%8A%A5%E9%94%99%EF%BC%9Aimporterror-build_darknetreference-so-undefined-symbol-cblas_sgemm/
### `from numpy import multiarray` => `ImportError: /usr/lib/python3.7/site-packages/numpy/core/_multiarray_umath.cpython-37m-aarch64-linux-gnu.so: undefined symbol: cblas_sgemm`
pacman -Ss blas # 查找 blas相关的全部卸载
pacman -R blas
pacman -R openblas
pacman -R blas
git clone https://github.com/xianyi/OpenBLAS
cd OpenBLAS
make
make PREFIX=/usr/lib/openblas install
nm -D /usr/lib/openblas/lib/libopenblas.so  | grep cblas_sgemm #=> 正确 0000000000031c10 T cblas_sgemm
echo "" >> ~/.zshrc
#
pip uninstall numpy scipy
git clone https://github.com/numpy/numpy && cd numpy
python setup.py install # 编译安装numpy
#
pacman -S gcc-fortran
pip install pybind11
pacman -S lapack
git clone https://github.com/scipy/scipy && cd scipy
python setup.py install # 编译安装scipy

#### install keras:
pip install scikit-learn  matplotlib
pip install tensorflow
pip install keras
