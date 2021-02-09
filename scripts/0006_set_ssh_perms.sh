#!/usr/bin/env bash
set -euo pipefail

SOURCE_DIR="${SOURCE_DIR:-"$(pwd)"}"
. "$SOURCE_DIR/buildcheck.sh"

if [[ -d "$HOME/.ssh" ]]; then
	echo "SSH file chmod..."

	chmod 755 "$HOME"/.ssh
	[[ -f "$HOME/.ssh/id_rsa" ]] && chmod 600 "$HOME"/.ssh/id_rsa
	[[ -f "$HOME/.ssh/id_rsa.pub" ]] && chmod 600 "$HOME"/.ssh/id_rsa.pub
fi
