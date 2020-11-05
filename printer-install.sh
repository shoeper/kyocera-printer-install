#!/bin/bash
set -x
cd ~/Downloads
mkdir LinuxDriverPackage
cd LinuxDriverPackage/
wget "https://downloads.kyoceradocumentsolutions.com.au/drivers/Drivers/Linux%20Driver%20Package.zip"
unzip Linux\ Driver\ Package.zip
cd Fedora/EU/kyodialog_x86_64
sudo dnf install -y kyodialog-0-0.x86_64.rpm
sudo sed -i 's#import sys#import sys\nsys.path.insert(0, "/usr/share/kyocera7/Python/PyPDF2-1.26.0")\nsys.path.insert(0, "/usr/share/kyocera7/Python/reportlab-2.7/src")#' /usr/lib/cups/filter/kyofilter_pre_F
sudo sed -i 's#env python#env python2#' /usr/lib/cups/filter/kyofilter_pre_F
cd ~/Downloads
wget "https://files.pythonhosted.org/packages/a1/2f/7bcba9b75143455aaddf90c46a0c53dca89e57a4e5c5760af8422aa6747c/reportlab-2.7.tar.gz"
tar xzf reportlab-2.7.tar.gz
sudo cp -r ~/Downloads/reportlab-2.7 /usr/share/kyocera7/Python/
set +x
