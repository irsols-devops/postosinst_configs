if [ ! -d /root/licensinfo.txt ]
then
echo 0 > licenseinfo.txt
echo " Machine ID Generated at `date` " > licenseinfo.txt 
echo " Unique Machine ID is ::  `ifconfig | grep ether | sed 's/://g' | sha256sum | awk '{print $1}'`" >> licenseinfo.txt
fi
cd /root/
rm -f anaconda-ks.cfg
rm -f ks-post.log
rm -f original-ks.cfg
rm -f splash.png
rm -f dymotd

if [ ! -d /root/FogOS ]
then
    echo "FogOS Directory structure does'nt exit"
    echo "Creating directory structure for the first time " 
    mkdir FogOS
    mv FogOS_PostInstallConfig.zip /root/FogOS
    cd /root/FogOS
    unzip DockerSOE.zip
fi
export PATH=$PATH:/root/FogOS
rm -f bashrc
rm -f TRANS.TBL
mv bash_profile /usr/local/bin/
