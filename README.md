# Visual Studio Code Settings
These are the keybinds, extentions and settings that I use for VSCode.

## Extentions
* [vscode-icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons)
* [Discord Presence](https://marketplace.visualstudio.com/items?itemName=icrawl.discord-vscode)
* [Remote - SSH](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)
* [Restore Terminals](https://marketplace.visualstudio.com/items?itemName=EthanSK.restore-terminals)
* [Git Lens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
* [Git History](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory)
* [Markdown Preview Enhanced](https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced)
* [Bearded Theme](https://marketplace.visualstudio.com/items?itemName=BeardedBear.beardedtheme)
* [Customize UI](https://marketplace.visualstudio.com/items?itemName=iocave.customize-ui) - Needed for backgrounds to work

## For Windows users
After downloading the files, place them in `%appdata%/Code/User/`.
### Or
* cd $APPDATA/Code/User
* git init
* git remote add origin https://github.com/EvilNick2/VSCode-Settings.git
* git pull
* git checkout master -f
* git branch --set-upstream-to origin/master

## For Linux users
After downloading the files, place them in `home/YourUserName/.config/Code/User`.

## Keybindings
If you'd like to know what keybinds are available, you can open `keybindings.json` which contains comments 
explaining what each keybind does.

## Editor Background
To edit the background image used by the editor open `settings.json` and replace "Image URL goes here" with
whatever image you want.

## Settings
* **Encoding type**: UTF-8
* **Font family**: Consolas (Fallback: monospace)
* **Word wrap**: OFF
* **Multi cursor modifier**: CTRL (Windows and Linux) / COMMAND (Mac)
* **Font size**: 12px
* **Auto indent style**: Advanced
* **Startup behavior**: Start with blank editor
* **Color scheme**: Bearded Theme Black & Amethyst
* **Workspace Trust prompt**: OFF
* **Accept Suggestion On Commit Character**: OFF
* **Default Terminal**: Git Bash
