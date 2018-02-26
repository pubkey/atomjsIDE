#!/usr/bin/env bash

# echo "### starting entrypoint.bash ###"

# atom.io innstall plugins
if [ ! -d /root/.atom/packages/todo-show ]
then
    apm install --packages-file /root/.atom/packages.txt
fi

#atom.io generate packages_own.txt
chmod -R 777 /root/.atom
rm /root/.atom/packages_own.txt
apm list --installed --bare > /root/.atom/packages_own.txt


#/bin/bash

#chmod -R 777 /workspace
cd /workspace


# make shurt gvfs-trash works
mkdir -p .Trash-1000/{expunged,files,info}
chown $USER:$USER .
touch testFile
gvfs-trash testFile

echo "atom --version:"
/usr/bin/atom --version

echo "Starting atom. Do not close this terminal or atom will close"
/usr/bin/atom -w
