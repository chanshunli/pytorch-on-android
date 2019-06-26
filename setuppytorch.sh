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

#### install keras:
pacman -S openblas
pip install scikit-learn scipy matplotlib
pip install tensorflow
pip install keras
