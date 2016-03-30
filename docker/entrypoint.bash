#!/usr/bin/env bash

#echo "### starting entrypoint.bash ###"

#atom.io
if [ ! -d /root/.atom/packages/file-icons ]
then
    apm install --packages-file /mapped/packages.txt
fi


chmod -R 777 /root/.atom

#/bin/bash

/usr/bin/atom -w
