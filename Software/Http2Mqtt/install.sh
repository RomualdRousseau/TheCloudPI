#! /bin/sh

mkdir /opt/http2mqtt

cp Http2Mqtt.py /opt/http2mqtt
cp wsgi.py /opt/http2mqtt
cp mosq-serv.crt /opt/http2mqtt
cp mosq-serv.key /opt/http2mqtt
cp http2mqtt /etc/init.d

ln -s /etc/init.d/http2mqtt /etc/rc0.d/K02http2mqtt
ln -s /etc/init.d/http2mqtt /etc/rc1.d/K02http2mqtt
ln -s /etc/init.d/http2mqtt /etc/rc2.d/S02http2mqtt
ln -s /etc/init.d/http2mqtt /etc/rc3.d/S02http2mqtt
ln -s /etc/init.d/http2mqtt /etc/rc4.d/S02http2mqtt
ln -s /etc/init.d/http2mqtt /etc/rc5.d/S02http2mqtt
ln -s /etc/init.d/http2mqtt /etc/rc6.d/K02http2mqtt

/etc/init.d/http2mqtt start

