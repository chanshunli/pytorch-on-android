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
