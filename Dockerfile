FROM python:3

# Copy files
COPY appkettle/*  /opt/

# ENV needed
# --port 6002 [KETTLE IP] [IMEI] 
# --mqtt [MQTT BROKER HOST] [MQTT BROKER PORT]

CMD ["/usr/bin/python3", "/opt/appkettle_mqtt.py", "--port", $KETTLE_IP, $IMEI, "--mqtt", $MQTT_BROKER, $MQTT_PORT]
