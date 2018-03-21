# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin
if [ -f ~/init_fogos.sh ];then
chmod +x /root/init_fogos.sh
mv /root/init_fogos.sh /usr/local/bin
/usr/local/bin/init_fogos.sh
fi
export PATH
