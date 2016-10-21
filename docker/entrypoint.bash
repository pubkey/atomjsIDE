#!/usr/bin/env bash

#echo "### starting entrypoint.bash ###"

#atom.io innstall plugins
if [ ! -d /root/.atom/packages/file-icons ]
then
    apm install --packages-file /mapped/packages.txt
fi

#atom.io generate packages_own.txt
chmod -R 777 /mapped
rm /mapped/packages_own.txt
apm list --installed --bare > /mapped/packages_own.txt

chmod -R 777 /root/.atom

#/bin/bash


cd /workspace

/usr/bin/atom -w
