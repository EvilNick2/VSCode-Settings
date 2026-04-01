#!/bin/bash

# ============================================================
#  Usage: extensions.sh [--cli <command>]
#  Example: extensions.sh --cli windsurf
#  Defaults to 'code' if no --cli flag is provided
#
#  VSCode uses the Microsoft marketplace.
#  All other forks (Windsurf, Cursor, Antigravity etc.) use
#  Open VSX — add any ID differences to OPENVSX_OVERRIDES,
#  and extensions unavailable on Open VSX to OPENVSX_SKIP.
# ============================================================

CLI="code"

while [[ $# -gt 0 ]]; do
    case "$1" in
        --cli)
            CLI="$2"
            shift 2
            ;;
        *)
            echo "Unknown argument: $1"
            echo "Usage: extensions.sh [--cli <command>]"
            exit 1
            ;;
    esac
done

CLR_RESET="\033[0m"
CLR_GREEN="\033[1;32m"
CLR_CYAN="\033[1;36m"
CLR_YELLOW="\033[1;33m"
CLR_RED="\033[1;31m"

if ! command -v "$CLI" >/dev/null 2>&1; then
    echo -e "${CLR_RED}[ERR] '$CLI' not found on PATH.${CLR_RESET}"
    exit 1
fi

# ============================================================
#  EXTENSIONS — default VSCode marketplace IDs
# ============================================================

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

# ============================================================
#  OPEN VSX — applied to all non-VSCode IDEs
#  Format: "vscode_id|openvsx_id"
# ============================================================

OPENVSX_OVERRIDES=(
    "hoovercj.vscode-settings-cycler|jellydn.vscode-settings-cycler"
)

# Extensions not available on Open VSX — skipped for non-VSCode IDEs
OPENVSX_SKIP=(
    "ms-vscode-remote.remote-ssh"
    "ms-vscode-remote.remote-ssh-edit"
    "ms-vscode.remote-explorer"
    "github.copilot"
    "github.copilot-chat"
)

# ============================================================
#  HELPERS
# ============================================================

is_vscode() {
    [[ "$CLI" == "code" ]]
}

should_skip() {
    local ext="$1"
    if is_vscode; then
        return 1
    fi
    for skip in "${OPENVSX_SKIP[@]}"; do
        [[ "$ext" == "$skip" ]] && return 0
    done
    return 1
}

resolve_id() {
    local ext="$1"
    if is_vscode; then
        echo "$ext"
        return
    fi
    for override in "${OPENVSX_OVERRIDES[@]}"; do
        local original="${override%%|*}"
        local replacement="${override##*|}"
        if [[ "$ext" == "$original" ]]; then
            echo "$replacement"
            return
        fi
    done
    echo "$ext"
}

# ============================================================
#  INSTALL
# ============================================================

echo ""
echo -e "${CLR_CYAN}Installing extensions using '$CLI'...${CLR_RESET}"
echo ""

for extension in "${extensions[@]}"; do
    if should_skip "$extension"; then
        echo -e "  ${CLR_YELLOW}[SKIP]${CLR_RESET} $extension (not available on Open VSX)"
        continue
    fi

    resolved="$(resolve_id "$extension")"

    if [[ "$resolved" != "$extension" ]]; then
        echo -e "  ${CLR_CYAN}[MAP]${CLR_RESET} $extension --> $resolved"
    fi

    if "$CLI" --list-extensions 2>/dev/null | grep -qi "^${resolved}$"; then
        echo -e "  ${CLR_YELLOW}[SKIP]${CLR_RESET} $resolved (already installed)"
    else
        echo -e "  ${CLR_CYAN}[-->]${CLR_RESET} Installing $resolved..."
        "$CLI" --install-extension "$resolved" --force >/dev/null 2>&1 \
            && echo -e "  ${CLR_GREEN}[OK]${CLR_RESET} $resolved" \
            || echo -e "  ${CLR_RED}[ERR]${CLR_RESET} Failed: $resolved"
    fi
done

echo ""
echo -e "${CLR_GREEN}Extension installation complete.${CLR_RESET}"