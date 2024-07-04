#!/bin/bash

DIR=$(dirname $PWD)
PART=$(basename $PWD)
cd ..

while [ "$DIR" != "/" ]; do
    PARENTREPO=$(basename $DIR)

    if [ -d "$DIR/.git" ]; then
        if $(git diff $PART|grep "dirty" >/dev/null); then
            echo "This repository is dirty, cannot updated parent repository $PARENTREPO."; 
            exit 1
        fi
        git add $PART
        git commit -m "Updated submodule `basename $PART`"
        git push
        echo "Commited and pushed to $PARENTREPO."
        break
    fi
    PART="`basename $DIR`/$PART"
    DIR=$(dirname $DIR)
    cd ..
done