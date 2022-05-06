curl https://faucet.aas.duke.edu/pub/pc/bigfix/patches/java/jre-8u151-windows-i586.exe --output jre-8u151-windows-i586.exe
start jre-8u151-windows-i586.exe /s
ECHO http://212.154.167.54:8080 > %userprofile%\AppData\LocalLow\Sun\Java\Deployment\security\exception.sites
curl http://212.154.167.54:8080/kazawclient1/AWhqLO_OUT_19.jnlp --output AWhqLO_OUT_19.jnlp 
javaws AWhqLO_OUT_19.jnlp
