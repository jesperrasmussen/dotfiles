#!/bin/bash
#cleanUp

# Use -gt 1 to consume two arguments per pass in the loop (e.g. each
# argument has a corresponding value to go with it).
# Use -gt 0 to consume one or more arguments per pass in the loop (e.g.
# some arguments don't have a corresponding value to go with it such
# as in the --default example).
# note: if this is set to -gt 0 the /etc/hosts part is not recognized ( may be a bug )

SMALLMOVIEFILES=false

while [[ $# -gt 1 ]]
do
key="$1"

case $key in
    -s|--smallmovies)
    SMALLMOVIEFILES=true
    shift # past argument
    ;;
    --default)
    DEFAULT=YES
    ;;
    *)
    # unknown option
    ;;
esac
shift # past argument or value
done

if [[ -n $1 ]]; then
    echo "Last line of file specified as non-opt/last argument:"
    echo $1
    echo $SMALLMOVIEFILES
fi

if [ "$SMALLMOVIEFILES" = true ] ; then
  #We define movies to be small below 50M
  find $1 -type f -size -50M -delete
fi
