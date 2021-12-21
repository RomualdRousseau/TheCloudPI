#! /bin/sh

/etc/init.d/pwrmgt stop

rm /etc/rc0.d/K02pwrmgt
rm /etc/rc1.d/K02pwrmgt
rm /etc/rc2.d/S02pwrmgt
rm /etc/rc3.d/S02pwrmgt
rm /etc/rc4.d/S02pwrmgt
rm /etc/rc5.d/S02pwrmgt
rm /etc/rc6.d/K02pwrmgt

rm /opt/pwrmgt/pwroffd.py
rm /opt/pwrmgt/fanmgtd.py
rm /etc/init.d/pwrmgt

rmdir /opt/pwrmgt

