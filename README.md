# atomjsIDE
This is a docker-container with the atom.io-IDE. It contains all necessary plugins for javascript-developement.

** THIS WORKS WITH LINUX ONLY ! **

## Install
1. git clone [https://github.com/danielsun174/atomjsIDE.git](https://github.com/danielsun174/atomjsIDE.git)
2. cd atomjsIDE
3. Edit the config.bash and include your workspace-folder
4. sudo bash run.bash
5. (It will take about 15 minutes when it runs for the first time.)

## ( optional to start the container without root )
6. sudo usermod -a -G docker alice //replace alice with your username
7. restart your system

## Plugins
The following plugins are installed:

- activate-power-mode@0.4.1
- atom-beautify@0.28.28
- atom-terminal@0.8.0
- autocomplete-modules@1.4.1
- autocomplete-paths@1.0.2
- color-picker@2.1.1
- docblockr@0.7.3
- file-icons@1.6.20
- git-time-machine@1.4.1
- highlight-selected@0.11.2
- javascript-snippets@1.2.1
- jshint@1.8.5
- language-docker@1.1.6
- linter@1.11.4
- linter-jshint@2.0.3
- minimap@4.21.0
- minimap-git-diff@4.2.0
- minimap-highlight-selected@4.4.0
- minimap-pigments@0.2.0
- pigments@0.26.0
- project-manager@2.9.0
- todo-show@1.4.0
