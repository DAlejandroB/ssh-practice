#Check if sshpass package is installed, sshpass makes it easier to work with password ssh authentication
if ["" = $(dpkg-query -W --showformat='${Status}\n' sshpass|grep "install ok installed")]; then
	echo "No sshpass installed, setting up sshpass"
	sudo apt-get --yes install sshpass
fi

sshpass -p "123" ssh 192.168.1.74 << 'ENDSSH'
#Batch program made to check if the current directory is root
VAR1="/root"
VAR2="$PWD"
if [ "$VAR1" = "$VAR2" ]; then
	echo "Success, the directory is root!"
else
	echo "Failure, the directory is no root :( "
fi
ENDSSH
