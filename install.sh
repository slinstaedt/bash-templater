#!/bin/bash
set -euo pipefail

if [[ ! -d ~/.local/bin ]]; then
    echo "~/.local/bin not found. Aborting";
    exit 1
fi

curl -o /tmp/templater https://raw.githubusercontent.com/owenstranathan/bash-templater/master/templater.sh

if ! [ -x "$(command -v install)" ]; then
    chmod +x /tmp/templater
    mv /tmp/templater ~/.local/bin/templater
else
    install /tmp/templater ~/.local/bin/templater
fi

if [[ ! -f "$HOME/.local/bin/templater" ]]; then
    echo "Installation failed! Install manually."
else
    echo "Installation succeeded use templater with \`templater\`"
fi