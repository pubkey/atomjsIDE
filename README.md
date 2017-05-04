# atomjsIDE
This is a docker-container with the [atom.io](https://atom.io/)-IDE. It contains all necessary plugins for javascript-developement. (also for es6, typescript, docker, git).

**THIS IS DOCKER, THIS WORKS WITH LINUX ONLY !**

## Install
1. `git clone https://github.com/pubkey/atomjsIDE.git`
2. `cd atomjsIDE`
3. Edit the config.bash and include your workspace-folder
4. `sudo bash run.bash`
5. (It will take about 15 minutes when it runs for the first time.)

## ( optional to start the container without root )
6. `sudo usermod -a -G docker alice` //replace alice with your username
7. restart your system

## Plugins
You can find a list of all installes plugins [here](./mapped/packages.txt)
