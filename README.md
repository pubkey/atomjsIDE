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
The following plugins are installed:

```
activate-power-mode@1.2.0
atom-beautify@0.29.17
atom-typescript@10.1.14
autocomplete-modules@1.6.7
autocomplete-paths@1.0.5
color-picker@2.2.5
docblockr@0.9.1
file-icons@2.0.17
git-time-machine@1.5.6
highlight-selected@0.12.0
javascript-snippets@1.2.1
language-csv@1.1.2
language-docker@1.1.7
language-ethereum@0.3.9
language-gitignore@0.3.0
language-gradle@0.0.3
language-ini@1.18.0
language-vue@0.21.2
linter@1.11.23
linter-eslint@8.1.2
linter-tslint@0.14.0
markdown-preview-plus@2.4.8
minimap@4.26.8
minimap-git-diff@4.3.1
minimap-highlight-selected@4.5.0
minimap-pigments@0.2.2
pdf-view@0.55.0
pigments@0.39.0
project-manager@3.3.3
react@0.16.2
svg-preview@0.11.0
tablr@1.8.1
todo-show@1.11.0
```
