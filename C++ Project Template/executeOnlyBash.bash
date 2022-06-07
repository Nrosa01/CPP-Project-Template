
APPNAME=Project

if [ "$1" = "-d" ]; then
    ./bin/$APPNAME-Debug ${@:2}
elif [ "$1" = "-r" ]; then
    ./bin/$APPNAME-Release ${@:2}
else
    ./bin/$APPNAME-Debug $@
fi
