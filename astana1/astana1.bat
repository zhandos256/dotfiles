echo Downloading Jre-8u151.exe
curl https://faucet.aas.duke.edu/pub/pc/bigfix/patches/java/jre-8u151-windows-i586.exe --output jre-8u151-windows-i586.exe
echo Installing Jre-8u151.exe
start jre-8u151-windows-i586.exe /s
echo Downloading ASTANA 1 file
echo http://212.154.167.54:8080 > C:\%userprofile%\AppData\LocalLow\Sun\Java\Deployment\security\exception.sites
curl http://212.154.167.54:8080/kazawclient1/AWhqLO_OUT_19.jnlp --output AWhqLO_OUT_19.jnlp 
echo Installing ASTANA 1
javaws -silent AWhqLO_OUT_19.jnlp
echo DONE
