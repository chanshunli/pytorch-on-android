# pytorch-on-android

install pytorch on android


Requirements :

Install Termux from Google Play Store https://play.google.com/store/apps/details?id=com.termux

Install Archlinux from https://sdrausty.github.io/TermuxArch/docs/install.html


Install :

Run Termux

Run startarch

Run setuppytorch.sh

Demo here https://youtu.be/ox9TxZhmJ30

### 诡异的torch._C: [`ModuleNotFoundError: No module named torch._C`](https://github.com/pytorch/pytorch/issues/574)

```bash
➜  pytorch git:(master) ✗ python
Python 3.7.3 (default, Jun 24 2019, 12:44:14)
[GCC 8.3.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import torch
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "/data/data/com.termux/files/home/pytorch/torch/__init__.py", line 79, in <module>
    from torch._C import *
ModuleNotFoundError: No module named 'torch._C'
>>>

➜  pytorch git:(master) ✗
➜  pytorch git:(master) ✗ cd ..
➜  home python
Python 3.7.3 (default, Jun 24 2019, 12:44:14)
[GCC 8.3.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import torch
>>>
```

### 终于OK了,折腾了一个下午和晚上: 训练mnist, 随时随地无网络的调用模型, 用出去矩阵数学, 你的大脑进化方向是和你强烈相关的用出去的东西, 你才能记住它

```bash

➜  home python mnish_test.py
Downloading http://yann.lecun.com/exdb/mnist/train-images-idx3-ubyte.gz to ../data/MNIST/raw/train-images-idx3-ubyte.gz
100.1%Extracting ../data/MNIST/raw/train-images-idx3-ubyte.gz
Downloading http://yann.lecun.com/exdb/mnist/train-labels-idx1-ubyte.gz to ../data/MNIST/raw/train-labels-idx1-ubyte.gz
113.5%Extracting ../data/MNIST/raw/train-labels-idx1-ubyte.gz
Downloading http://yann.lecun.com/exdb/mnist/t10k-images-idx3-ubyte.gz to ../data/MNIST/raw/t10k-images-idx3-ubyte.gz
100.4%Extracting ../data/MNIST/raw/t10k-images-idx3-ubyte.gz
Downloading http://yann.lecun.com/exdb/mnist/t10k-labels-idx1-ubyte.gz to ../data/MNIST/raw/t10k-labels-idx1-ubyte.gz
180.4%Extracting ../data/MNIST/raw/t10k-labels-idx1-ubyte.gz
Processing...
Done!
Train Epoch: 1 [0/60000 (0%)]	Loss: 2.300039
Train Epoch: 1 [640/60000 (1%)]	Loss: 2.213460
Train Epoch: 1 [1280/60000 (2%)]	Loss: 2.170403
Train Epoch: 1 [1920/60000 (3%)]	Loss: 2.076579
Train Epoch: 1 [2560/60000 (4%)]	Loss: 1.867874
Train Epoch: 1 [3200/60000 (5%)]	Loss: 1.413523
Train Epoch: 1 [3840/60000 (6%)]	Loss: 1.000300
Train Epoch: 1 [4480/60000 (7%)]	Loss: 0.776155
Train Epoch: 1 [5120/60000 (9%)]	Loss: 0.459784
Train Epoch: 1 [5760/60000 (10%)]	Loss: 0.485992
Train Epoch: 1 [6400/60000 (11%)]	Loss: 0.438883
Train Epoch: 1 [7040/60000 (12%)]	Loss: 0.408428
Train Epoch: 1 [7680/60000 (13%)]	Loss: 0.460159
Train Epoch: 1 [8320/60000 (14%)]	Loss: 0.428866
Train Epoch: 1 [8960/60000 (15%)]	Loss: 0.398963
Train Epoch: 1 [9600/60000 (16%)]	Loss: 0.385040
Train Epoch: 1 [10240/60000 (17%)]	Loss: 0.298317
Train Epoch: 1 [10880/60000 (18%)]	Loss: 0.503057
Train Epoch: 1 [11520/60000 (19%)]	Loss: 0.524066
Train Epoch: 1 [12160/60000 (20%)]	Loss: 0.338822
Train Epoch: 1 [12800/60000 (21%)]	Loss: 0.367451
Train Epoch: 1 [13440/60000 (22%)]	Loss: 0.451519
...

```
