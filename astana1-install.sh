#!/bin/bash

# astana 1 java file
java_file='http://212.154.167.54:8080/kazawclient1/AWhqLO_OUT_19.jnlp'

jre-8u151='https://filehippo.com/download_jre-32/8.0.1510.12.0/post_download/'

echo "Downloading Jre-8u151"
curl $jre-8u151 --output jre-8u151-windows-i586.exe
echo "Downloading Java file from ASTANA 1"
curl $java_file --output AWhqLO_OUT_19.jnlp

ls
