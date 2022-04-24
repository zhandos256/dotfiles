#!/bin/bash

astana_host='212.154.167.54'
astana_port=8080

java_file='http://212.154.167.54:8080/kazawclient1/AWhqLO_OUT_19.jnlp'

telnet $astana_host $astana_port
GET /$java_file HTTP/1.0

ls
