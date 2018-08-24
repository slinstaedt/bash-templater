#!/bin/bash
set -euo pipefail

INSTALLATION_LOC="$HOME/.local/bin"

if [[ ! -d "$INSTALLATION_LOC" ]]; then
    INSTALLATION_LOC="/usr/local/bin"
fi

curl -o /tmp/templater https://raw.githubusercontent.com/owenstranathan/bash-templater/master/templater.sh

if ! [ -x "$(command -v install)" ]; then
    chmod +x /tmp/templater
    mv /tmp/templater "$INSTALLATION_LOC/templater"
else
    install /tmp/templater "$INSTALLATION_LOC/templater"
fi

if [[ ! -f "$INSTALLATION_LOC/templater" ]]; then
    echo "Installation failed! Install manually."
else
    echo "Installation succeeded use templater with \`templater\`"
fi