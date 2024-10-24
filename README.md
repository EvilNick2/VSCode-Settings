# Visual Studio Code Settings
These are the keybinds, extentions and settings that I use for VSCode.

## Extensions
* [vscode-icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons)
* [Discord Presence](https://marketplace.visualstudio.com/items?itemName=icrawl.discord-vscode)
* [Remote - SSH](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)
* [Remote - SSH: Editing Configuration Files](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh-edit)
* [Remote Explorer](https://marketplace.visualstudio.com/items?itemName=ms-vscode.remote-explorer)
* [Restore Terminals](https://marketplace.visualstudio.com/items?itemName=EthanSK.restore-terminals)
* [Git Lens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
* [Git History](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory)
* [Markdown Preview Enhanced](https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced)
* [Bearded Theme](https://marketplace.visualstudio.com/items?itemName=BeardedBear.beardedtheme)
* [GitHub Copilot](https://marketplace.visualstudio.com/items?itemName=github.copilot)
* [GitHub Copilot Chat](https://marketplace.visualstudio.com/items?itemName=github.copilot-chat)
* [Simple Readme](https://marketplace.visualstudio.com/items?itemName=maurodesouza.vscode-simple-readme)
* [.gitignore Generator](https://marketplace.visualstudio.com/items?itemName=piotrpalarz.vscode-gitignore-generator)
* [Choose a License](https://marketplace.visualstudio.com/items?itemName=ultram4rine.vscode-choosealicense)
* [Git Initialize](https://marketplace.visualstudio.com/items?itemName=evilnick.git-initialize)
* [WakaTime](https://marketplace.visualstudio.com/items?itemName=WakaTime.vscode-wakatime)
* [indent-rainbow](https://marketplace.visualstudio.com/items?itemName=oderwat.indent-rainbow)
* [background](https://marketplace.visualstudio.com/items?itemName=shalldie.background)
* [Cyberpunk](https://marketplace.visualstudio.com/items?itemName=max-SS.Cyberpunk)
* [Settings Cycler](https://marketplace.visualstudio.com/items?itemName=hoovercj.vscode-settings-cycler)

## For Windows users
After downloading the files, place them in `%appdata%/Code/User/`.
### Or
* cd $APPDATA/Code/User
* git init
* git remote add origin https://github.com/EvilNick2/VSCode-Settings.git
* git pull
* git checkout master -f
* git branch --set-upstream-to origin/master

### For Linux users
After downloading the files, place them in `home/YourUserName/.config/Code/User`.

## Post installation
After installing the files you can optionally run the included `extensions.sh` script with bash\

You will also need to change the path to the background images in `settings.json` to be correctly pointing to `Code/User/backgrounds` folder on your system

## Keybindings
If you'd like to know what keybinds are available, you can open `keybindings.json` which contains comments 
explaining what each keybind does.

## Settings
* **Encoding type**: UTF-8
* **Font family**: Consolas (Fallback: monospace)
* **Word wrap**: ON
* **Multi cursor modifier**: CTRL (Windows and Linux) / COMMAND (Mac)
* **Font size**: 12px
* **Auto indent style**: Advanced
* **Startup behavior**: Start with blank editor
* **Color scheme**: Bearded Theme Black & Amethyst
* **Workspace Trust prompt**: OFF
* **Accept Suggestion On Commit Character**: OFF
* **Default Terminal**: Git Bash
