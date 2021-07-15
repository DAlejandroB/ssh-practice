#Batch program made to check if the current directory is root
VAR1="/root"
VAR2="$PWD"
if [ "$VAR1" = "$VAR2" ]; then
	echo "Success, the directory is root!"
else
	echo "Failure, the directory is no root :( "
fi

