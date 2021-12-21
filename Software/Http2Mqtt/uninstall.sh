#! /bin/sh

/etc/init.d/http2mqtt stop

rm /etc/rc0.d/K02http2mqtt
rm /etc/rc1.d/K02http2mqtt
rm /etc/rc2.d/S02http2mqtt
rm /etc/rc3.d/S02http2mqtt
rm /etc/rc4.d/S02http2mqtt
rm /etc/rc5.d/S02http2mqtt
rm /etc/rc6.d/K02http2mqtt

rm /opt/http2mqtt/Http2Mqtt.py
rm /opt/http2mqtt/wsgi.py
rm /opt/http2mqtt/mosq-serv.crt
rm /opt/http2mqtt/mosq-serv.key
rm /etc/init.d/http2mqtt

rmdir /opt/http2mqtt
