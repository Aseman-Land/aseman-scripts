# /bin/sh

if [ "${SIALAN_DATA_PATH}" = "" ]; then
    SIALAN_DATA_PATH="`echo $0 | grep ^/`"
    if [ "$SIALAN_DATA_PATH" = "" ]; then
	SIALAN_DATA_PATH="$PWD"/"$0"
    fi
    DIR="$PWD"
    DIR_NAME=`dirname "$SIALAN_DATA_PATH"`
    cd "$DIR_NAME"
    SIALAN_DATA_PATH="$PWD"
fi

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$SIALAN_DATA_PATH/libs"
"$SIALAN_DATA_PATH/AppName" "$@"
