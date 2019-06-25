#!/bin/bash
pacman -S base-devel
pacman -S git
pacman -S python-pip

# https://docs.anaconda.com/anaconda/install/linux
pacman -Sy libxau libxi libxss libxtst libxcursor libxcomposite libxdamage libxfixes libxrandr libxrender mesa-libgl  alsa-lib libglvnd

pip install numpy matplotlib pandas jupyter
pip install scikit-learn scipy

git clone http://github.com/pytorch/pytorch
cd pytorch
git submodule update --init --recursive
pip install -U setuptools
pip install -r requirements.txt
python setup.py build_deps install
cd ..

