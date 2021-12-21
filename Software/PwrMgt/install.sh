#! /bin/sh

mkdir /opt/pwrmgt

cp pwroffd.py /opt/pwrmgt
cp fanmgtd.py /opt/pwrmgt
cp pwrmgt /etc/init.d

ln -s /etc/init.d/pwrmgt /etc/rc0.d/K02pwrmgt
ln -s /etc/init.d/pwrmgt /etc/rc1.d/K02pwrmgt
ln -s /etc/init.d/pwrmgt /etc/rc2.d/S02pwrmgt
ln -s /etc/init.d/pwrmgt /etc/rc3.d/S02pwrmgt
ln -s /etc/init.d/pwrmgt /etc/rc4.d/S02pwrmgt
ln -s /etc/init.d/pwrmgt /etc/rc5.d/S02pwrmgt
ln -s /etc/init.d/pwrmgt /etc/rc6.d/K02pwrmgt

/etc/init.d/pwrmgt start

echo Enable power off led by editing /boot/config.txt
echo enable_uart=1

