#!/bin/bash

extensions=(
	"vscode-icons-team.vscode-icons"
	"icrawl.discord-vscode"
	"ms-vscode-remote.remote-ssh"
	"ms-vscode-remote.remote-ssh-edit"
	"ms-vscode.remote-explorer"
	"ethansk.restore-terminals"
	"eamodio.gitlens"
	"donjayamanne.githistory"
	"shd101wyy.markdown-preview-enhanced"
	"beardedbear.beardedtheme"
	"github.copilot"
	"github.copilot-chat"
	"evilnick2.evilnick2-readme-generator"
	"piotrpalarz.vscode-gitignore-generator"
	"ultram4rine.vscode-choosealicense"
	"evilnick2.evilnick2-git-initialize"
	"WakaTime.vscode-wakatime"
	"oderwat.indent-rainbow"
	"shalldie.background"
	"max-SS.Cyberpunk"
	"hoovercj.vscode-settings-cycler"
)

for extension in "${extensions[@]}"; do
	if ! code --list-extensions | grep -q "^$extension$"; then
		echo "Installing $extension..."
		code --install-extension $extension > /dev/null 2>&1
	else
		echo "$extension is already installed."
	fi
done

echo "Extension installation complete."