#!/bin/bash

echo "start install git"
sudo yum install -y git

echo "start install library..."
yum -y install gcc gcc-c++ make git patch openssl-devel zlib-devel readline-devel sqlite-devel bzip2-devel bzip2-libs

echo "start install pipenv..."
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

echo "config pipenv path..."

echo -e '\n#pyenv' >>~/.bashrc
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

source ~/.bashrc

echo "install python3.7"
pyenv install 3.7.1

python --version

echo "Done..."