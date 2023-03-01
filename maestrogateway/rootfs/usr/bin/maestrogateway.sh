#!/usr/bin/with-contenv bashio

bashio::log.info "Starting maestrogateway..."

export LOG_LEVEL=$(bashio::config 'log_level')
export MQTT_ip=$(bashio::config 'mqtt_host')
export MQTT_port=$(bashio::config 'mqtt_port')
export MQTT_authentication=True
export MQTT_user=$(bashio::config 'mqtt_username')
export MQTT_pass=$(bashio::config 'mqtt_password')
export MQTT_TOPIC_SUB=$(bashio::config 'mqtt_topic_sub')
export MQTT_TOPIC_PUB=$(bashio::config 'mqtt_topic_pub')
export MQTT_PAYLOAD_TYPE=$(bashio::config 'mqtt_payload_type')
export WS_RECONNECTS_BEFORE_ALERT=5
export MCZip=$(bashio::config 'mcz_ip')
export MCZport=$(bashio::config 'mcz_port')

python3 /maestro/maestro.py