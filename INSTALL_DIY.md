## The hardcore way: DIY

## install python3
# follow https://opensource.com/article/19/5/python-3-default-mac "What we should do"
brew install pyenv
pyenv install 3.7.3
pyenv global 3.7.3
pyenv version
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bash_profile
which python
python -V

## install pip
python -m pip install --user virtualenv
pip -V

## brew install packages pip can't directly install
brew install freetype
brew install libpng
brew install gfortran

## install dependencies
cd $REPO
python -m venv virtualenv_run
source virtualenv_run/bin/activate
pip install -r requirements.txt --index-url https://pypi.yelpcorp.com/simple

## make sure these libraries can be imported in python
import numpy
import pandas
import scipy
import sklearn
import matplotlib
matplotlib.use('agg')
import matplotlib.pyplot as plt
import seaborn

## launch notebook
jupyter notebook $NOTEBOOK.ipynb

## i had to fix this for sklearn to work, download `MacPorts-2.5.4-10.14-Mojave.pkg` from https://guide.macports.org/chunked/installing.macports.html
sudo port -v install py37-scipy
sudo port select --set cython cython37
sudo port select --set python python37
sudo port select --set python3 python37

