#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Installer Script

## Colors ----------------------------
Color_Off='\033[0m'
BBlack='\033[1;30m' BRed='\033[1;31m'    BGreen='\033[1;32m' BYellow='\033[1;33m'
BBlue='\033[1;34m'  BPurple='\033[1;35m' BCyan='\033[1;36m'  BWhite='\033[1;37m'

## Directories ----------------------------
DIR=`pwd`
NOW=`date '+%d%B%Y-%H:%M'`
LF_BIN="$HOME/.local/bin/lfub"
LF_BIN_DIR="$HOME/.local/bin"
LF_CONF_DIR="$HOME/.config/lf"

# Install lf
install_lf() {
  echo -e ${BBlue}"\n[*] Installing (copying) lf bin..." ${Color_Off}
	if [[ -f "$LF_BIN" ]]; then
		echo -e ${BPurple}"[*] Overwriting bin..." ${Color_Off}
    cp $DIR/bin/* $LF_BIN_DIR
	else
		echo -e ${BPurple}"[*] Copying bin..." ${Color_Off}
    cp $DIR/bin/* $LF_BIN_DIR
	fi
	echo -e ${BGreen}"[*] lf bin installed...\n" ${Color_Off}
}

# Install config
install_config() {
	if [[ -d "$LF_CONF_DIR" ]]; then
		echo -e ${BPurple}"[*] Creating a backup of your lf configs..." ${Color_Off}
		mv "$LF_CONF_DIR" "${LF_CONF_DIR}.${USER}"
	fi
	echo -e ${BBlue}"[*] Copying lf config..." ${Color_Off}
	{ mkdir -p "$LF_CONF_DIR"; cp -rf $DIR/{cleaner,lfrc,scope,shortcutrc} "$LF_CONF_DIR"; }

	if [[ -f "$LF_CONF_DIR/lfrc" ]]; then
		echo -e ${BGreen}"[*] Successfully Installed.\n" ${Color_Off}
		exit 0
	else
		echo -e ${BRed}"[!] Failed to install.\n" ${Color_Off}
		exit 1
	fi
}

# Main
main() {
	install_lf
	install_config
}

main

