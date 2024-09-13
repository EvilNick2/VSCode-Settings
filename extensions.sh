#!/bin/bash

# Define a list of VS Code extension IDs to install
extensions=(
    "beardedbear.beardedtheme"
    "donjayamanne.githistory"
    "eamodio.gitlens"
    "ethansk.restore-terminals"
    "github.copilot"
    "github.copilot-chat"
    "icrawl.discord-vscode"
    "ms-vscode-remote.remote-ssh"
    "ms-vscode-remote.remote-ssh-edit"
    "ms-vscode.remote-explorer"
    "shd101wyy.markdown-preview-enhanced"
    "vscode-icons-team.vscode-icons"
    "maurodesouza.vscode-simple-readme"
    "piotrpalarz.vscode-gitignore-generator"
    "ultram4rine.vscode-choosealicense"
    "evilnick.git-initialize"
    "WakaTime.vscode-wakatime"
    "oderwat.indent-rainbow"
)

# Loop through each extension ID and install it
for extension in "${extensions[@]}"; do
    # Check if the extension is already installed
    if ! code --list-extensions | grep -q "^$extension$"; then
        echo "Installing $extension..."
        code --install-extension $extension
    else
        echo "$extension is already installed."
    fi
done

echo "Extension installation complete."