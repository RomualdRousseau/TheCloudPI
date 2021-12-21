from flask import Flask, request, make_response
import paho.mqtt.publish as publish

app = Flask(__name__)

@app.route("/<topic>/<payload>", methods=["GET", "POST"])
def proxy(topic, payload):
    """This function will forward a http request to the mqtt broker
    """

    if payload == "on":
        publish.single(topic, "1", hostname="mqtt-server.xanadu", port=1883, auth={"username":"publisher", "password":""})
    elif payload == "off":
        publish.single(topic, "0", hostname="mqtt-server.xanadu", port=1883, auth={"username":"publisher", "password":""})
    else:
        publish.single(topic, payload, hostname="mqtt-server.xanadu", port=1883, auth={"username":"publisher", "password":""})

    return make_response("", 200)

if __name__ == '__main__':
    app.run(host='0.0.0.0',port='4443', ssl_context=('mosq-serv.crt', 'mosq-serv.key'))

