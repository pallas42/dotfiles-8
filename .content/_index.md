+++
title = "README"
author = ["Ben Mezger"]
date = 2020-08-06T00:00:00-03:00
lastmod = 2021-02-27T23:24:58-03:00
draft = false
+++

<div class="ox-hugo-toc toc">
<div></div>

<div class="heading">Table of Contents</div>

- [System dependencies](#system-dependencies):deps:
    - [Installing Homebrew](#installing-homebrew):osx:
    - [Installing Chezmoi with Homebrew](#installing-chezmoi-with-homebrew):osx:
    - [Installing chezmoi without Homebrew](#installing-chezmoi-without-homebrew):osx:archlinux:
    - [Install Homebrew packages](#install-homebrew-packages):osx:
    - [Install `mute app`](#install-mute-app):osx:
    - [Installing Chezmoi with Pacman](#installing-chezmoi-with-pacman):archlinux:
    - [Installing Pacman packages](#installing-pacman-packages):archlinux:
    - [Install Paru (AUR wrapper)](#install-paru--aur-wrapper):archlinux:
    - [Install AUR packages](#install-aur-packages):archlinux:
    - [Install Git repositories](#install-git-repositories):archlinux:osx:
        - [Install Zplug](#install-zplug):osx:archlinux:
        - [Install Tmux TPM](#install-tmux-tpm):osx:archlinux:
        - [Install Vim Plug](#install-vim-plug):osx:archlinux:
        - [Install Base-16](#install-base-16):osx:archlinux:
        - [Install Emacs Doom](#install-emacs-doom):osx:archlinux:
- [System configuration](#system-configuration):sysconf:
    - [OSX](#osx):osx:
        - [Always show scrollbar](#always-show-scrollbar)
        - [Don't save to iCloud by default, use disk instead](#don-t-save-to-icloud-by-default-use-disk-instead)
        - [Quit printer when all jobs complete](#quit-printer-when-all-jobs-complete)
        - [Disable the "Are you sure you want to open this app?" dialog](#disable-the-are-you-sure-you-want-to-open-this-app-dialog)
        - [Enable trackpad tap to click for this user and for the login screen](#enable-trackpad-tap-to-click-for-this-user-and-for-the-login-screen)
        - [Increase sound quality for Bluetooth headphones](#increase-sound-quality-for-bluetooth-headphones)
        - [Set fast keyboard repeat rate](#set-fast-keyboard-repeat-rate)
        - [Require password immediately after sleep or screen saver](#require-password-immediately-after-sleep-or-screen-saver)
        - [Save screenshots to the desktop](#save-screenshots-to-the-desktop)
        - [Save screenshots in PNG format](#save-screenshots-in-png-format)
        - [Show hidden files in Finder by default](#show-hidden-files-in-finder-by-default)
        - [Show all filename extensions in Finder](#show-all-filename-extensions-in-finder)
        - [Avoid creating `.DS_Store` files on network or USB volumes](#avoid-creating-dot-ds-store-files-on-network-or-usb-volumes)
        - [Check for daily for software updates](#check-for-daily-for-software-updates)
        - [Set default clock format](#set-default-clock-format)
        - [Set default Finder location to `$HOME`](#set-default-finder-location-to-home)
        - [Kill Finder to apply `defaults`](#kill-finder-to-apply-defaults)
        - [Kill `SystemUIServer` for UI defaults](#kill-systemuiserver-for-ui-defaults)
        - [Enable `locate` database](#enable-locate-database)
        - [Enable firewall](#enable-firewall)
        - [Set network clock sync](#set-network-clock-sync)
    - [Archlinux](#archlinux):archlinux:
        - [Pacman conf](#pacman-conf)
        - [Set timezone](#set-timezone)
        - [Set locale](#set-locale)
    - [Set SSH permissions](#set-ssh-permissions):osx:archlinux:
    - [Set GNUPG permissions](#set-gnupg-permissions):osx:archlinux:
    - [Initialize chezmoi](#initialize-chezmoi):osx:archlinux:
    - [Ensure important directories](#ensure-important-directories):osx:archlinux:
    - [Apply Chezmoi config files](#apply-chezmoi-config-files)
- [Dotfiles configuration](#dotfiles-configuration):dotfiles:
    - [Chezmoi](#chezmoi)
        - [Configuration](#configuration)
        - [Chezmoi ignore](#chezmoi-ignore)
    - [Wakatime](#wakatime)
    - [Pythonrc](#pythonrc)
    - [Xorg](#xorg):archlinux:
        - [xmodmap](#xmodmap)
        - [XResources](#xresources)
        - [xinitrc](#xinitrc)
        - [xsession](#xsession)
    - [Tmux](#tmux)
        - [Gitmux](#gitmux)
        - [Tmux conf](#tmux-conf)
        - [Archive](#archive):ARCHIVE:
    - [Dircolors](#dircolors)
    - [Curl](#curl)
    - [Inputrc](#inputrc)
    - [Editorconfig](#editorconfig)
    - [Skhdrc](#skhdrc):osx:
    - [Zsh](#zsh)
        - [plugins.txt](#plugins-dot-txt)
        - [keys.zsh](#keys-dot-zsh)
        - [stack.zsh](#stack-dot-zsh)
        - [history.zsh](#history-dot-zsh)
        - [gpg-agent.zsh](#gpg-agent-dot-zsh)
        - [exports.zsh](#exports-dot-zsh)
        - [aliases.zsh](#aliases-dot-zsh)
        - [git\_aliases.zsh](#git-aliases-dot-zsh)
        - [init.zsh](#init-dot-zsh)
        - [evals.zsh](#evals-dot-zsh)
        - [.zshrc](#dot-zshrc)
    - [Git](#git)
        - [Git config](#git-config)
        - [Git templates](#git-templates)
    - [Vim](#vim)
        - [vimrc](#vimrc)
        - [plugins.vim](#plugins-dot-vim)
        - [nvimrc](#nvimrc)
    - [Emacs](#emacs)
        - [init.el](#init-dot-el)
        - [packages.el](#packages-dot-el)
        - [config.el](#config-dot-el)
        - [Snippets](#snippets)
- [Scripts](#scripts):scripts:
    - [Homebrew install final script](#homebrew-install-final-script)
    - [Chezmoi install final script](#chezmoi-install-final-script)
    - [Install packages final script](#install-packages-final-script)
    - [Install AUR packages final script](#install-aur-packages-final-script)
    - [Install Git packages final script](#install-git-packages-final-script)
    - [Configure OSX final script](#configure-osx-final-script)
    - [Configure Archlinux final script](#configure-archlinux-final-script)
    - [Configure system final script](#configure-system-final-script)
    - [SSH permission final script](#ssh-permission-final-script)
    - [GNUPG permission final script](#gnupg-permission-final-script)
    - [Ensure directory final script](#ensure-directory-final-script)

</div>
<!--endtoc-->

{{< figure src="https://github.com/benmezger/dotfiles/workflows/dotfiles/badge.svg" link="https://github.com/benmezger/dotfiles/actions" >}}

This file holds my system configuration, including install scripts and
application configuration. They are written in Emacs Org-mode, which allows me to
reference snippets withing source blocks, and export them to a final file. I
edit _some_ of my configuration here and it gets auto exported to the correct
path. I use `chezmoi` to handle any secret and dynamic variables across my
configuration, which allows me to keep multiple configuration for multiple
machines in one repository, by handling them as templates.


## System dependencies {#system-dependencies}


### Installing Homebrew {#installing-homebrew}

```bash
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh
```


### Installing Chezmoi with Homebrew {#installing-chezmoi-with-homebrew}

```bash
brew install chezmoi
```


### Installing chezmoi without Homebrew {#installing-chezmoi-without-homebrew}

```bash
curl -sfL https://git.io/chezmoi | sh
```


### Install Homebrew packages {#install-homebrew-packages}

`brew bundle` requires either `Brewfile` to be defined at the
`HOMEBREW_BUNDLE_FILE`'s env, or passed with `--file=` flag or be at the same
directory the command is ran.

```bash
brew bundle
```


### Install `mute app` {#install-mute-app}

```bash
curl https://github.com/pixel-point/mute-me/releases/download/v2.0.0-rc2/mute-me-v2.0.0-rc2.zip \
        -L -o /tmp/muteme.zip

unzip -o /tmp/muteme.zip -d /tmp/
mv "/tmp/Mute Me.app" "$HOME/Applications/Mute Me.app"
```


### Installing Chezmoi with Pacman {#installing-chezmoi-with-pacman}

```bash
sudo pacman -S chezmoi --noconfirm
```


### Installing Pacman packages {#installing-pacman-packages}

For an example of a Pacman package file, see [Pacfile](Pacfile). The following, assumes
Pacfile is set in an env variable called `PACMAN_BUNDLE_FILE`.

```bash
sudo pacman -Syy
sudo pacman -S --noconfirm --needed - <"$PACMAN_BUNDLE_FILE"
```


### Install Paru (AUR wrapper) {#install-paru--aur-wrapper}

```bash
PARU_PATH=/tmp/paru

git clone https://aur.archlinux.org/paru.git $PARU_PATH
(cd $PARU_PATH && makepkg -si)
```


### Install AUR packages {#install-aur-packages}

For an example of a AUR package file, see [Aurfile](Aurfile). The following, assumes
Aurfile is set in an env variable called `AUR_BUNDLE_FILE`.

```bash
paru -S --nouseask - <"$AUR_BUNDLE_FILE"
```


### Install Git repositories {#install-git-repositories}


#### Install Zplug {#install-zplug}

```bash
ZPLUG_PATH="$HOME/.zplug"
if [ ! -d "$ZPLUG_PATH" ]; then
	git clone https://github.com/zplug/zplug "$ZPLUG_PATH"
fi
```


#### Install Tmux TPM {#install-tmux-tpm}

```bash
TMUX_TPM_PATH="$HOME/.tmux/plugins/tpm"
if [ ! -d "$TMUX_TPM_PATH" ]; then
	mkdir -p "$TMUX_TPM_PATH"
	git clone https://github.com/tmux-plugin/tpm "$TMUX_TPM_PATH"
fi
```


#### Install Vim Plug {#install-vim-plug}

```bash
VIM_PLUG_PATH="$HOME/.vim/autoload"
if [ ! -d "$VIM_PLUG_PATH" ]; then
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

	if ! [ -x "$(command -v nvim)" ]; then
		nvim +PlugInstall +qall --headless
	fi
fi
```


#### Install Base-16 {#install-base-16}

```bash
BASE16_PATH="$HOME/.config/base16-shell"
if [ ! -d "$BASE16_PATH" ]; then
	mkdir -p "$BASE16_PATH"
	git clone https://github.com/chriskempson/base16-shell "$BASE16_PATH"
fi
```


#### Install Emacs Doom {#install-emacs-doom}

```bash
EMACS_PATH="$HOME/.emacs.d"
if [ ! -d "$EMACS_PATH" ]; then
	mkdir -p "$EMACS_PATH"
	git clone --depth 1 https://github.com/hlissner/doom-emacs "$EMACS_PATH"
	"$EMACS_PATH"/bin/doom -y install
else
	"$EMACS_PATH"/bin/doom -y sync -e
fi
```


## System configuration {#system-configuration}


### OSX {#osx}

Some of this configurations are from [this](https://github.com/mathiasbynens/dotfiles/blob/main/.macos) link.


#### Always show scrollbar {#always-show-scrollbar}

```bash
ansi --green "Always show scrollbars"
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
```


#### Don't save to iCloud by default, use disk instead {#don-t-save-to-icloud-by-default-use-disk-instead}

```bash
ansi --green "Save to disk and not in iCloud by default"
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
```


#### Quit printer when all jobs complete {#quit-printer-when-all-jobs-complete}

```bash
ansi --green "Quit printer app when jobs are completed"
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true
```


#### Disable the "Are you sure you want to open this app?" dialog {#disable-the-are-you-sure-you-want-to-open-this-app-dialog}

```bash
ansi --green "Disable the “Are you sure you want to open this application?” dialog"
defaults write com.apple.LaunchServices LSQuarantine -bool false
```


#### Enable trackpad tap to click for this user and for the login screen {#enable-trackpad-tap-to-click-for-this-user-and-for-the-login-screen}

```bash
ansi --green "Trackpad: enable tap to click for this user and for the login screen"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
```


#### Increase sound quality for Bluetooth headphones {#increase-sound-quality-for-bluetooth-headphones}

```bash
ansi --green "Increase sound quality for Bluetooth headphones/headsets"
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40
```


#### Set fast keyboard repeat rate {#set-fast-keyboard-repeat-rate}

```bash
ansi --green "Set a blazingly fast keyboard repeat rate"
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10
```


#### Require password immediately after sleep or screen saver {#require-password-immediately-after-sleep-or-screen-saver}

```bash
ansi --green "Require password immediately after sleep or screen saver begins"
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
```


#### Save screenshots to the desktop {#save-screenshots-to-the-desktop}

```bash
ansi --green "Save screenshots to the desktop"
defaults write com.apple.screencapture location -string "${HOME}/Desktop"
```


#### Save screenshots in PNG format {#save-screenshots-in-png-format}

Other options: BMP, GIF, JPG, PDF, TIFF

```bash
ansi --green "Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)"
defaults write com.apple.screencapture type -string "png"
```


#### Show hidden files in Finder by default {#show-hidden-files-in-finder-by-default}

```bash
ansi --green "Finder: show hidden files by default"
defaults write com.apple.finder AppleShowAllFiles -bool true
```


#### Show all filename extensions in Finder {#show-all-filename-extensions-in-finder}

```bash
ansi --green "Finder: show all filename extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
```


#### Avoid creating `.DS_Store` files on network or USB volumes {#avoid-creating-dot-ds-store-files-on-network-or-usb-volumes}

```bash
ansi --green "Avoid creating .DS_Store files on network or USB volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
```


#### Check for daily for software updates {#check-for-daily-for-software-updates}

```bash
ansi --green "Set to check daily instead of weekly"
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
```


#### Set default clock format {#set-default-clock-format}

```bash
ansi --green "Set default clock format"
defaults write com.apple.menuextra.clock DateFormat -string "EEE d MMM h:mm:ss a"
```


#### Set default Finder location to `$HOME` {#set-default-finder-location-to-home}

```bash
ansi --green "Set Default Finder Location to Home Folder"
defaults write com.apple.finder NewWindowTarget -string "PfLo" &&
	defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"
```


#### Kill Finder to apply `defaults` {#kill-finder-to-apply-defaults}

```bash
ansi --green "Killing Finder.."
killall Finder
```


#### Kill `SystemUIServer` for UI defaults {#kill-systemuiserver-for-ui-defaults}

```bash
ansi --green "Killing SystemUIServer"
killall SystemUIServer
```


#### Enable `locate` database {#enable-locate-database}

```bash
ansi --green "Build Locate Database"
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist
```


#### Enable firewall {#enable-firewall}

```bash
ansi --green "Enable firewall"
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on
```


#### Set network clock sync {#set-network-clock-sync}

```bash
ansi --green "Set Clock Using Network Time"
sudo systemsetup setusingnetworktime on
```


### Archlinux {#archlinux}

Archlinux related configuration.


#### Pacman conf {#pacman-conf}

This enables color, total downloads, check space and sets verbose PKG list when
running `pacman`.

```bash
sudo sed -i '/Color$/s/^#//g' /etc/pacman.conf
sudo sed -i '/TotalDownload$/s/^#//g' /etc/pacman.conf
sudo sed -i '/CheckSpace$/s/^#//g' /etc/pacman.conf
sudo sed -i '/VerbosePkgLists$/s/^#//g' /etc/pacman.conf
```


#### Set timezone {#set-timezone}

Enable `ntp` sync, set timezone to Sao Paulo and sync hardware clock.

```bash
sudo timedatectl set-ntp true
sudo ln -sf /usr/share/zoneinfo/Ameriaca/Sao_Paulo /etc/localtime
sudo hwclock --systohc
```


#### Set locale {#set-locale}

Set locale to `en_US.UTF-8` by default and generate the locale file.

```bash
sudo sed -i '/en_US.UTF-8$/s/^#//g' /etc/pacman.conf
sudo locale-gen
```


### Set SSH permissions {#set-ssh-permissions}

```bash
chmod 755 "$HOME"/.ssh
[[ -f "$HOME/.ssh/id_rsa" ]] && chmod 600 "$HOME"/.ssh/id_rsa
[[ -f "$HOME/.ssh/id_rsa.pub" ]] && chmod 600 "$HOME"/.ssh/id_rsa.pub
```


### Set GNUPG permissions {#set-gnupg-permissions}

```bash
chown -R $(whoami) ~/.gnupg/
# Also correct the permissions and access rights on the directory
chmod 700 ~/.gnupg/*
chmod 700 ~/.gnupg
```


### Initialize chezmoi {#initialize-chezmoi}

Change the `$HOME/dotfiles` directory

```bash
chezmoi init -S $HOME/dotfiles
```


### Ensure important directories {#ensure-important-directories}

```bash
mkdir -pv $HOME/mail
mkdir -pv $HOME/mail/.attachments
mkdir -pv $HOME/workspace/opt
mkdir -pv $HOME/workspace/go
```


### Apply Chezmoi config files {#apply-chezmoi-config-files}

```bash
chezmoi apply -v
```


## Dotfiles configuration {#dotfiles-configuration}


### Chezmoi {#chezmoi}


#### Configuration {#configuration}

<!--list-separator-->

-  Chezmoi default variables

    ```yaml
    {{- $headless := false -}}
    {{- $secrets := true -}}

    {{- $name := "Ben Mezger" -}}
    {{- $email := "me@benmezger.nl" -}}
    {{- $hostname := "seds" -}}
    {{- $gpg_keyid := "0x7357E344D6C3C795" -}}
    {{- $github_user := "benmezger" -}}

    {{- $personal_smtp_host := "smtp.gmail.com" -}}
    {{- $personal_smtp_port := 587 -}}
    {{- $personal_imap_host := "imap.gmail.com" -}}
    {{- $personal_imap_port := 443 -}}

    {{- $work_email := "ben@ckl.io" -}}
    {{- $work_smtp_host := "smtp.gmail.com" -}}
    {{- $work_smtp_port := 587 -}}
    {{- $work_imap_host := "imap.gmail.com" -}}
    {{- $work_imap_port := 443 -}}

    {{- $podcast_opml := "https://www.listennotes.com/listen/podcast-list-McKCI8sZ0v2/opml/" -}}

    {{- if (env "CI") -}}
    {{- $headless = true -}}
    {{- $secrets = false -}}
    {{- end -}}
    ```

<!--list-separator-->

-  Chezmoi prompts

    If the `ASK` env is defined (`ASK=1 chezmoi init -S <dotfiles-dir>`), Chezmoi
    will prompt for the default [variables](#chezmoi-default-variables).

    ```yaml
    {{- if (env "ASK") }}
    {{- $secrets := promptBool "secrets" -}}

    {{- $name := promptString "full name" -}}
    {{- $email := promptString "personal email" -}}
    {{- $hostname := promptString "computer hostname" -}}
    {{- $gpg_keyid := promptString "PGP key id" -}}
    {{- $github_user := promptString "github username" -}}

    {{- $personal_smtp_host := promptString "personal email's smtp host" -}}
    {{- $personal_smtp_port := promptInt "personal email's smtp port" -}}
    {{- $personal_imap_host := promptString "personal email's imap host" -}}
    {{- $personal_imap_port := promptInt "personal email's imap port" -}}

    {{- $work_email := promptString "work email" -}}
    {{- $work_smtp_host := promptString "work email's smtp host" -}}
    {{- $work_smtp_port := promptString "work email's smtp port" -}}
    {{- $work_imap_host := promptString "work email's imap host" -}}
    {{- $work_imap_port := promptString "work email's imap port" -}}

    {{- $podcast_opml := promptString "podcast opml url" -}}
    {{- end -}}
    ```

<!--list-separator-->

-  Chezmoi data configuration

    Variables are then passed to the `data` section

    ```yaml
    sourceDir: {{ .chezmoi.sourceDir }}

    data:
      secrets: {{ $secrets }}
      headless: {{ $headless }}
      email: {{ $email }}
      name: {{ $name }}
      smtp_host: {{ $personal_smtp_host }}
      smtp_port: {{ $personal_smtp_port }}
      imap_host: {{ $personal_imap_host }}
      imap_port: {{ $personal_imap_port }}
      hostname: {{ $hostname }}
      gpg_keyid: {{ $gpg_keyid }}
      github_user: {{ $github_user }}
      podcast_opml: {{ $podcast_opml }}
      work:
        workmail: {{ $work_email }}
        imap_host: {{ $work_imap_host }}
        imap_port: {{ $work_imap_port }}
        smtp_host: {{ $work_smtp_host }}
        smtp_port: {{ $work_smtp_port }}
    ```

<!--list-separator-->

-  Chezmoi secrets configuration

    If secrets is `true`, then apply `bitwarden`'s item ids

    ```yaml
    {{- if $secrets }}
      bitwarden:
        jira: 8c7e36c5-a859-4fe6-a0c2-acb500c08fff
        i3rs: 1f13be62-1f5e-40fb-9b60-acb500c08fff
        freenode: da4d9bba-62ee-47d4-8e9c-acb500c08fff
        ircseds: f07a3e72-6d5a-43de-9314-acb500c08fff
        bnc: 66879550-7ff9-4e50-9a2d-acb500c08fff
        spotify: d8ebcdfe-0ecc-40ec-a464-acb500c08fff
        spotify_api: 64c5ef38-cb4b-4ae7-961d-acba0047e94b
        wakatime_api: 806af555-54de-44cc-a857-acb500c08fff
        personal_mail: c553f8b1-f4a3-4220-8b0b-acb500c08fff
        work_mail: aeff6fce-4245-4fea-80a6-acb500c08fff
        rclone_gdrive: 34d2c72b-c33d-44ad-883e-acbe01020aef
        ssh_pub: 98ebec3b-3a9f-4220-9ae2-acc300fee77f
        ssh_priv: 0572f760-a184-40f9-bfa2-acc300d9ec5c
        ssh: eb36407d-787d-4266-9b97-acc3014f98a3
        pgp_priv: 5bc1d3cd-3332-4c83-ad4a-accc00f68aad
        lastfm: c9a4cb98-f7b5-46ea-bef9-acb500c08fff
        slack_work_api_token: 5e81b24b-13b5-4c03-a415-acda010435cb
    {{- end -}}
    ```

<!--list-separator-->

-  Chezmoi final configuration

    Finally, from the previous Chezmoi section, this is the generated configuration
    file.

    ```yaml
    {{- $headless := false -}}
    {{- $secrets := true -}}

    {{- $name := "Ben Mezger" -}}
    {{- $email := "me@benmezger.nl" -}}
    {{- $hostname := "seds" -}}
    {{- $gpg_keyid := "0x7357E344D6C3C795" -}}
    {{- $github_user := "benmezger" -}}

    {{- $personal_smtp_host := "smtp.gmail.com" -}}
    {{- $personal_smtp_port := 587 -}}
    {{- $personal_imap_host := "imap.gmail.com" -}}
    {{- $personal_imap_port := 443 -}}

    {{- $work_email := "ben@ckl.io" -}}
    {{- $work_smtp_host := "smtp.gmail.com" -}}
    {{- $work_smtp_port := 587 -}}
    {{- $work_imap_host := "imap.gmail.com" -}}
    {{- $work_imap_port := 443 -}}

    {{- $podcast_opml := "https://www.listennotes.com/listen/podcast-list-McKCI8sZ0v2/opml/" -}}

    {{- if (env "CI") -}}
    {{- $headless = true -}}
    {{- $secrets = false -}}
    {{- end -}}

    {{- if (env "ASK") }}
    {{- $secrets := promptBool "secrets" -}}

    {{- $name := promptString "full name" -}}
    {{- $email := promptString "personal email" -}}
    {{- $hostname := promptString "computer hostname" -}}
    {{- $gpg_keyid := promptString "PGP key id" -}}
    {{- $github_user := promptString "github username" -}}

    {{- $personal_smtp_host := promptString "personal email's smtp host" -}}
    {{- $personal_smtp_port := promptInt "personal email's smtp port" -}}
    {{- $personal_imap_host := promptString "personal email's imap host" -}}
    {{- $personal_imap_port := promptInt "personal email's imap port" -}}

    {{- $work_email := promptString "work email" -}}
    {{- $work_smtp_host := promptString "work email's smtp host" -}}
    {{- $work_smtp_port := promptString "work email's smtp port" -}}
    {{- $work_imap_host := promptString "work email's imap host" -}}
    {{- $work_imap_port := promptString "work email's imap port" -}}

    {{- $podcast_opml := promptString "podcast opml url" -}}
    {{- end -}}

    sourceDir: {{ .chezmoi.sourceDir }}

    data:
      secrets: {{ $secrets }}
      headless: {{ $headless }}
      email: {{ $email }}
      name: {{ $name }}
      smtp_host: {{ $personal_smtp_host }}
      smtp_port: {{ $personal_smtp_port }}
      imap_host: {{ $personal_imap_host }}
      imap_port: {{ $personal_imap_port }}
      hostname: {{ $hostname }}
      gpg_keyid: {{ $gpg_keyid }}
      github_user: {{ $github_user }}
      podcast_opml: {{ $podcast_opml }}
      work:
        workmail: {{ $work_email }}
        imap_host: {{ $work_imap_host }}
        imap_port: {{ $work_imap_port }}
        smtp_host: {{ $work_smtp_host }}
        smtp_port: {{ $work_smtp_port }}
    {{- if $secrets }}
      bitwarden:
        jira: 8c7e36c5-a859-4fe6-a0c2-acb500c08fff
        i3rs: 1f13be62-1f5e-40fb-9b60-acb500c08fff
        freenode: da4d9bba-62ee-47d4-8e9c-acb500c08fff
        ircseds: f07a3e72-6d5a-43de-9314-acb500c08fff
        bnc: 66879550-7ff9-4e50-9a2d-acb500c08fff
        spotify: d8ebcdfe-0ecc-40ec-a464-acb500c08fff
        spotify_api: 64c5ef38-cb4b-4ae7-961d-acba0047e94b
        wakatime_api: 806af555-54de-44cc-a857-acb500c08fff
        personal_mail: c553f8b1-f4a3-4220-8b0b-acb500c08fff
        work_mail: aeff6fce-4245-4fea-80a6-acb500c08fff
        rclone_gdrive: 34d2c72b-c33d-44ad-883e-acbe01020aef
        ssh_pub: 98ebec3b-3a9f-4220-9ae2-acc300fee77f
        ssh_priv: 0572f760-a184-40f9-bfa2-acc300d9ec5c
        ssh: eb36407d-787d-4266-9b97-acc3014f98a3
        pgp_priv: 5bc1d3cd-3332-4c83-ad4a-accc00f68aad
        lastfm: c9a4cb98-f7b5-46ea-bef9-acb500c08fff
        slack_work_api_token: 5e81b24b-13b5-4c03-a415-acda010435cb
    {{- end -}}
    ```


#### Chezmoi ignore {#chezmoi-ignore}

<!--list-separator-->

-  Defaults to ignore

    ```text
    roles
    .github/
    Dockerfile
    LICENSE.md
    README.org
    TODO.org
    archlinux.yml
    docker-compose.yml
    docker-entrypoint.sh
    inventory
    osx.yml
    requirements.yml
    COMMANDS.org
    ansible.cfg
    CHANGELOG.md
    install.sh
    .weechat/logs
    .weechat/python/__pycache__/
    config/pgcli/history
    scripts/
    Brewfile
    Pacfile
    Aurfile
    Brewfile.lock.json
    Makefile
    projectile
    resources

    # hugo
    docs/
    .content/
    static
    config.toml
    themes
    ```

<!--list-separator-->

-  Ignore by distribution

    Since Chezmoi allows multiple platforms, we can handle which files we want
    Chezmoi to ignore based on the `OS` type.

    ```text
    # Don't copy the following files if OS is OSX
    {{- if ne .chezmoi.os "linux" }}
    .config/dunst
    .config/rofi
    .config/i3
    .config/polybar
    .config/i3-autodisplay
    .config/greenclip.cfg

    .xinitrc
    .xsession
    .Xmodmap
    .Xresources
    .xinitrc
    .xsession
    .config/picom.conf
    .config/systemd

    .weechat/python/anotify.py
    .weechat/python/autoload/anotify.py
    {{- end }}

    # Don't copy the following files if OS is Linux
    {{- if ne .chezmoi.os "darwin" }}
    .weechat/ruby/terminal_notifier.rb
    .weechat/ruby/autoload/terminal_notifier.rb
    .skhdrc
    {{- end }}
    ```

<!--list-separator-->

-  Ignore if `secrets` is not set

    Remember the `secret` variable set in [default variables](#chezmoi-default-variables)? Since this dotfiles is
    ran on a CI, we don't want to apply any configuration file that contains any
    secret. Since the `CI` environment variable is set, `secrets` defaults to
    `false` .

    ```text
    {{- if not .secrets }}
    .mbsyncrc
    .config/msmtp
    .wakatime.cfg
    .env-secrets
    .ssh/id_rsa.pub
    .ssh/id_rsa
    .weechat/sec.conf
    .weechat/weechat.conf
    .config/mopidy/mopidy.conf
    .config/rclone/rclone.conf

    .gnupg/pubring.kbx
    .gnupg/trustdb.gpg
    .gnupg/private-keys-v1.d/1A1454B27AB014B0F46B4914A48CD9D408232BDB.key
    .gnupg/private-keys-v1.d/93EF471D0D148D56E50AD95AE4F7402EB65DFD26.key
    .authinfo
    {{- end }}
    ```

<!--list-separator-->

-  Chezmoi final `.chezmoiignore`

    ```text
    roles
    .github/
    Dockerfile
    LICENSE.md
    README.org
    TODO.org
    archlinux.yml
    docker-compose.yml
    docker-entrypoint.sh
    inventory
    osx.yml
    requirements.yml
    COMMANDS.org
    ansible.cfg
    CHANGELOG.md
    install.sh
    .weechat/logs
    .weechat/python/__pycache__/
    config/pgcli/history
    scripts/
    Brewfile
    Pacfile
    Aurfile
    Brewfile.lock.json
    Makefile
    projectile
    resources

    # hugo
    docs/
    .content/
    static
    config.toml
    themes

    # Don't copy the following files if OS is OSX
    {{- if ne .chezmoi.os "linux" }}
    .config/dunst
    .config/rofi
    .config/i3
    .config/polybar
    .config/i3-autodisplay
    .config/greenclip.cfg

    .xinitrc
    .xsession
    .Xmodmap
    .Xresources
    .xinitrc
    .xsession
    .config/picom.conf
    .config/systemd

    .weechat/python/anotify.py
    .weechat/python/autoload/anotify.py
    {{- end }}

    # Don't copy the following files if OS is Linux
    {{- if ne .chezmoi.os "darwin" }}
    .weechat/ruby/terminal_notifier.rb
    .weechat/ruby/autoload/terminal_notifier.rb
    .skhdrc
    {{- end }}

    {{- if not .secrets }}
    .mbsyncrc
    .config/msmtp
    .wakatime.cfg
    .env-secrets
    .ssh/id_rsa.pub
    .ssh/id_rsa
    .weechat/sec.conf
    .weechat/weechat.conf
    .config/mopidy/mopidy.conf
    .config/rclone/rclone.conf

    .gnupg/pubring.kbx
    .gnupg/trustdb.gpg
    .gnupg/private-keys-v1.d/1A1454B27AB014B0F46B4914A48CD9D408232BDB.key
    .gnupg/private-keys-v1.d/93EF471D0D148D56E50AD95AE4F7402EB65DFD26.key
    .authinfo
    {{- end }}
    ```


### Wakatime {#wakatime}

The following in my Wakatime configuration. The API key is set automatically by
Chezmoi, see [Chezmoi secrets configuration](#chezmoi-secrets-configuration).

```conf
[settings]
debug = false
hidefilenames = false
ignore =
    COMMIT_EDITMSG$
    PULLREQ_EDITMSG$
    MERGE_MSG$
    TAG_EDITMSG$
api_key={{ (bitwarden "item" .bitwarden.wakatime_api).login.password }}
hostname={{ .hostname }}
```


### Pythonrc {#pythonrc}

The following enables autocomplete when on a standard python interpreter and
keeps history around sessions.

```python
import readline,rlcompleter

### Indenting
class TabCompleter(rlcompleter.Completer):
    """Completer that supports indenting"""
    def complete(self, text, state):
        if not text:
            return ('    ', None)[state]
        else:
            return rlcompleter.Completer.complete(self, text, state)

readline.set_completer(TabCompleter().complete)

### Add autocompletion
if 'libedit' in readline.__doc__:
    readline.parse_and_bind("bind -e")
    readline.parse_and_bind("bind '\t' rl_complete")
else:
    readline.parse_and_bind("tab: complete")

### Add history
import os
histfile = os.path.join(os.environ["HOME"], ".pyhist")
try:
    readline.read_history_file(histfile)
except IOError:
    pass
import atexit
atexit.register(readline.write_history_file, histfile)
del histfile
```


### Xorg {#xorg}


#### xmodmap {#xmodmap}

```text
pointer = 1 2 3 5 4 7 6 8 9 10 11 12
```


#### XResources {#xresources}

Create `Xresources` file with Gruvbox as default theme.

```text
! cursor size
Xcursor.size: 9

! URxvt
URxvt.font: xft:Hack:size=10,xft:Inconsolata\\-dz:size=10,xft:Monospace:size=9:antialias=true:hinting=true,xft:FontAwesome:size=10
! do not scroll with output
URxvt*scrollTtyOutput: false
! scroll in relation to buffer (with mouse scroll or Shift+Page Up)
URxvt*scrollWithBuffer: true
! scroll back to the bottom on keypress
URxvt*scrollTtyKeypress: true
! scrollback buffer in secondary screen
URxvt.secondaryScreen: 1
URxvt.secondaryScroll: 0
! perl extensions
URxvt.perl-ext-common: default,matcher,fullscreen,tabbed,clipboard,searchable-scrollback
! clickable urls
URxvt.url-launcher: /usr/bin/google-chrome-stable
URxvt.matcher.button: 2
! to open and list recent urls via keyboard
URxvt.keysym.C-Delete: perl:matcher:last
URxvt.keysym.M-Delete: perl:matcher:list
! color matching links
URxvt.matcher.rend.0: Uline Bold fg5
! yankable URLs
URxvt.perl-ext: default,url-select
URxvt.keysym.M-u: perl:url-select:select_next
URxvt.url-select.launcher: /usr/bin/google-chrome-stable
URxvt.url-select.underline: true
! cursor underline
URxvt*cursorUnderline: true
! scrollbar position
URxvt*scrollBar: false
! no borders
URxvt*internalBorder: 0
URxvt*externalBorder: 0px
URxvt*borderLess: false
! fullscreen
URxvt.keysym.F11: perl:fullscreen:switch
! tab colors
URxvt.tabbed.tabbar-fg: 2
URxvt.tabbed.tabbar-bg: 0
URxvt.tabbed.tab-fg: 3
URxvt.tabbed.tab-bg: 0
! clipboard
URxvt.keysym.M-c:   perl:clipboard:copy
URxvt.keysym.M-v:   perl:clipboard:paste
URxvt.keysym.M-C-v: perl:clipboard:paste_escaped
! larger history
URxvt.saveLines: 0

! from: https://github.com/morhetz/gruvbox-contrib
! hard contrast: *background: #1d2021
*background: #282828
! soft contrast: *background: #32302f
*foreground: #ebdbb2
! Black + DarkGrey
*color0:  #282828
*color8:  #928374
! DarkRed + Red
*color1:  #cc241d
*color9:  #fb4934
! DarkGreen + Green
*color2:  #98971a
*color10: #b8bb26
! DarkYellow + Yellow
*color3:  #d79921
*color11: #fabd2f
! DarkBlue + Blue
*color4:  #458588
*color12: #83a598
! DarkMagenta + Magenta
*color5:  #b16286
*color13: #d3869b
! DarkCyan + Cyan
*color6:  #689d6a
*color14: #8ec07c
! LightGrey + White
*color7:  #a89984
*color15: #ebdbb2
```


#### xinitrc {#xinitrc}

Create `xinitrc` which gets called by [`xsession`](#xsession).

```shell
#!/usr/bin/bash

# Test if $1 is available
isavailable() {
    type "$1" &>/dev/null
}

# screen powersave
xset +dpms
xset dpms 0 0 300
xset r rate 180 40

# 230 has IPS or TN screen with 125.37 DPI
xrandr --dpi 125.37

# run xrdb
[[ -f $HOME/.Xresources ]] && xrdb -load $HOME/.Xresources

# run urxvt daemon
[[ -z "$(pidof urxvtd)" ]] && urxvtd --quiet --opendisplay --fork

# start redshift
# current lat/log: oud-zuid
isavailable redshift && redshift -l "-27.578023":"-48.537449" -t "5500":"3000" &
isavailable synclient && synclient TouchpadOff=1 &

isavailable nm-applet && nm-applet &
isavailable xautolock && xautolock -time 10 -locker ~/.bin/lock.sh &
isavailable dunst && dunst -config ~/.config/dunst/dunstrc &
isavailable xss-lock && xss-lock -- ~/.bin/lock.sh &
isavailable picom && picom --config ~/.config/picom.conf &
isavailable unclutter && unclutter &
```


#### xsession {#xsession}

Start `i3wm` automatically on Xsession

```shell
#!/usr/bin/bash

. $HOME/.xinitrc

if [ -f /usr/bin/i3 ]; then
    exec i3
fi
```


### Tmux {#tmux}


#### Gitmux {#gitmux}

The following is [Gitmux](https://github.com/arl/gitmux)'s configuration file.

```conf
tmux:
  symbols:
    branch: '⎇ '
    hashprefix: ':'
    ahead: ↑·
    behind: ↓·
    staged: '● '
    conflict: '✖ '
    modified: '✚ '
    untracked: '… '
    stashed: '⚑ '
    clean: ✔
  styles:
    state: '#[fg=red,bold]'
    branch: '#[fg=white,bold]'
    remote: '#[fg=cyan]'
    staged: '#[fg=green,bold]'
    conflict: '#[fg=red,bold]'
    modified: '#[fg=red,bold]'
    untracked: '#[fg=magenta,bold]'
    stashed: '#[fg=cyan,bold]'
    clean: '#[fg=green,bold]'
  layout: [branch, divergence, ' - ', flags]
  options:
    branch_max_len: 10
```


#### Tmux conf {#tmux-conf}

The `tmux.conf` requires [TPM](https://github.com/tmux-plugins/tpm) to work.

```conf
# start with window 1 (instead of 0)
set -g base-index 1

# due to weechat
# see: https://github.com/GermainZ/weechat-vimode/blob/master/FAQ.md#esc-key-not-being-detected-instantly
set -sg escape-time 0

set -g renumber-windows on # reorder windows when deleting..

# start with pane 1
set -g pane-base-index 1

# modify prefix
unbind C-b
set -g prefix C-x
bind C-x send-prefix

# source config file
bind R source-file ~/.tmux.conf

# allow terminal scrolling
set-option -g terminal-overrides 'xterm*:smcup@:rmcup@'
set -g default-terminal "screen-256color"

# Use vim keybindings in copy mode
setw -g mode-keys vi

# Setup 'v' to begin selection as in Vim
bind P paste-buffer

# use mouse in copy mode
setw -g mouse on

# history
set -g history-limit 100000

# splitting and current path (same to binding c
unbind %
bind h split-window -h -c "#{pane_current_path}"
unbind '"'
bind v split-window -v -c "#{pane_current_path}"
bind c new-window -c "#{pane_current_path}"

# with mouse (click on pretty little boxes)
# set -g mouse-select-window on

# colon :
bind : command-prompt

# clear scroll-back
# bind C-l send-keys 'C-l'
# bind C-k send-keys 'clear && tmux clear-history';
bind -n C-k clear-history

# resize panes like vim
bind < resize-pane -L 10
bind > resize-pane -R 10
bind - resize-pane -D 10
bind + resize-pane -U 10

# disable sound bell
set -g bell-action none
# disable visual bell
set -g visual-bell off

# panes
# set -g mouse-select-pane on
# set -g mouse-resize-pane on

# include some current environment variables
set-option -ga update-environment " SSH_AUTH_SOCK"

# To install tpm
# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# List of plugins
# Supports `github_username/repo` or full git URLs
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'tmux-plugins/tmux-copycat'
set -g @plugin 'tmux-plugins/tmux-yank'
set -g @plugin 'tmux-plugins/tmux-sessionist'
set -g @plugin 'tmux-plugins/tmux-battery'
set -g @plugin 'xamut/tmux-weather'
set -g @plugin 'tmux-plugins/tmux-online-status'
set -g @plugin 'tmux-plugins/tmux-prefix-highlight'
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'tmux-plugins/tmux-open'
set -g @plugin 'tmux-plugins/tmux-maildir-counter'
set -g @plugin 'mattdavis90/base16-tmux'
set -g @plugin 'Alkindi42/tmux-bitwarden'

set -g @bw-key 'T'
set -g @bw-copy-to-clipboard 'on'
set -g @bw-session 'BW_SESSION'

set -g @colors-base16 'gruvbox-dark-hard'

# statusbar formatting
set-option -g status-left "#{session_name} "
set-option -g status-right "📩 P: #{maildir_counter_1}, W: #{maildir_counter_2} | #{prefix_highlight} #{battery_icon} #{battery_percentage} | %d-%m-%Y %H:%M:%S | Online: #{online_status}| #{weather} | #(gitmux -cfg ~/.gitmux.conf '#{pane_current_path}') "

set-option -wg window-status-current-format " #{window_index} #{window_name} "
set-option -wg window-status-format " #{window_index} #{window_name} "

# set mail dirs
set -g @maildir_counters '~/mail/personal/inbox/new|~/mail/work/inbox/new'

set -g @prefix_highlight_fg 'black'
set -g @prefix_highlight_show_copy_mode 'on'
set -g @prefix_highlight_copy_mode_attr 'fg=#bdae93,bg=#3c3836,bold'
set -g @prefix_highlight_show_sync_mode 'on'
set -g @prefix_highlight_sync_mode_attr 'fg=black,bg=green'

# Initializes TMUX plugin manager.
# Keep this line at the very bottom of tmux.conf.
run ~/.tmux/plugins/tpm/tpm

# theme overwrite
# set statusbar update interval
set-option -g status-interval 1

# window separators
set-option -wg window-status-separator ""

# monitor window changes
set-option -wg monitor-activity on
set-option -wg monitor-bell on
set-option -g status-style "bg=terminal,fg=terminal"

# default window title colors
set-option -wg window-status-style bg="#3C3836",fg="#7C6F64"
# colors for windows with activity
set-option -wg window-status-activity-style bg="#3C3836",fg="#A89984"
# colors for windows with bells
set-option -wg window-status-bell-style bg="#3C3836",fg="#FE8019"
# active window title colors
set-option -wg window-status-current-style bg="#A89984",fg="#3C3836"
# pane border
set-option -g pane-active-border-style fg="#FE8019"
set-option -g pane-border-style fg="#3C3836"
# pane number display
set-option -g display-panes-active-colour "#FE8019"
set-option -g display-panes-colour "#3C3836"

# clock
set-option -wg clock-mode-colour "#FE8019"

# copy mode highlighting
%if #{>=:#{version},3.2}
    set-option -wg copy-mode-match-style "bg=#A89984,fg=#3C3836"
    set-option -wg copy-mode-current-match-style "bg=#FE8109,fg=#3C3836"
%endif

set -g status-right-length 150
```


#### Archive {#archive}


### Dircolors {#dircolors}

```shell
#  ____            _               _  __
# | __ )  __ _  __| |_      _____ | |/ _|
# |  _ \ / _` |/ _` \ \ /\ / / _ \| | |_
# | |_) | (_| | (_| |\ V  V / (_) | |  _|
# |____/ \__,_|\__,_| \_/\_/ \___/|_|_|
#      _ _               _
#   __| (_)_ __ ___ ___ | | ___  _ __ ___
#  / _` | | '__/ __/ _ \| |/ _ \| '__/ __|
# | (_| | | | | (_| (_) | | (_) | |  \__ \
#  \__,_|_|_|  \___\___/|_|\___/|_|  |___/
#
#
# Author: Jon Bernard
#

# Below, there should be one TERM entry for each termtype that is colorizable
TERM Eterm
TERM ansi
TERM color-xterm
TERM con132x25
TERM con132x30
TERM con132x43
TERM con132x60
TERM con80x25
TERM con80x28
TERM con80x30
TERM con80x43
TERM con80x50
TERM con80x60
TERM cons25
TERM console
TERM cygwin
TERM dtterm
TERM eterm-color
TERM gnome
TERM gnome-256color
TERM jfbterm
TERM konsole
TERM kterm
TERM linux
TERM linux-c
TERM mach-color
TERM mlterm
TERM putty
TERM rxvt
TERM rxvt-256color
TERM rxvt-cygwin
TERM rxvt-cygwin-native
TERM rxvt-unicode
TERM rxvt-unicode-256color
TERM rxvt-unicode256
TERM screen
TERM screen-256color
TERM screen-256color-bce
TERM screen-bce
TERM screen-w
TERM screen.Eterm
TERM screen.rxvt
TERM screen.linux
TERM terminator
TERM vt100
TERM xterm
TERM xterm-16color
TERM xterm-256color
TERM xterm-88color
TERM xterm-color
TERM xterm-debian

# Below are the color init strings for the basic file types. A color init string
# consists of one or more of the following numeric codes:
#
# Attribute codes:
# 00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed
#
# Text color codes:
# 30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white
#
# Background color codes:
# 40=black 41=red 42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white

NORMAL 0;38;15                # no color code at all
#FILE 00                        # regular file: use no color at all
RESET 0                         # reset to "normal" color
DIR 1;34                        # directory
LINK 01;35                 # symbolic link. (If you set this to 'target' instead of a
                                # numerical value, the color is as for the file pointed to.)
MULTIHARDLINK 00                # regular file with more than one link
FIFO 40;33                      # pipe
SOCK 1;38;211                 # socket
DOOR 01;35                      # door
BLK 40;33;01                    # block device driver
CHR 40;33;01                    # character device driver
ORPHAN 40;31;01                 # symlink to nonexistent file, or non-stat'able file
SETUID 37;41                    # file that is setuid (u+s)
SETGID 30;43                    # file that is setgid (g+s)
CAPABILITY 30;41                # file with capability
STICKY_OTHER_WRITABLE 30;42     # dir that is sticky and other-writable (+t,o+w)
OTHER_WRITABLE 30;42            # dir that is other-writable (o+w) and not sticky
STICKY 37;44                    # dir with the sticky bit set (+t) and not other-writable

# This is for files with execute permission:
EXEC  1;30;32

# archives or compressed (bright red)
.tar 01;31
.tgz 01;31
.arj 01;31
.taz 01;31
.lzh 01;31
.lzma 01;31
.tlz 01;31
.txz 01;31
.zip 01;31
.z 01;31
.Z 01;31
.dz 01;31
.gz 01;31
.lz 01;31
.xz 01;31
.bz2 01;31
.bz 01;31
.tbz 01;31
.tbz2 01;31
.tz 01;31
.deb 01;31
.rpm 01;31
.jar 01;31
.war 01;31
.ear 01;31
.sar 01;31
.rar 01;31
.ace 01;31
.zoo 01;31
.cpio 01;31
.7z 01;31
.rz 01;31

# image formats
.jpg 01;35
.jpeg 01;35
.gif 01;35
.bmp 01;35
.pbm 01;35
.pgm 01;35
.ppm 01;35
.tga 01;35
.xbm 01;35
.xpm 01;35
.tif 01;35
.tiff 01;35
.png 01;35
.svg 01;35
.svgz 01;35
.mng 01;35
.pcx 01;35
.mov 01;35
.mpg 01;35
.mpeg 01;35
.m2v 01;35
.mkv 01;35
.webm 01;35
.ogm 01;35
.mp4 01;35
.m4v 01;35
.mp4v 01;35
.vob 01;35
.qt 01;35
.nuv 01;35
.wmv 01;35
.asf 01;35
.rm 01;35
.rmvb 01;35
.flc 01;35
.avi 01;35
.fli 01;35
.flv 01;35
.gl 01;35
.dl 01;35
.xcf 01;35
.xwd 01;35
.yuv 01;35
.cgm 01;35
.emf 01;35
.axv 01;35
.anx 01;35
.ogv 01;35
.ogx 01;35

# audio formats
.aac 01;33
.au 01;33
.flac 01;33
.mid 01;33
.midi 01;33
.mka 01;33
.mp3 01;33
.mpc 01;33
.ogg 01;33
.ra 01;33
.wav 01;33
.axa 01;33
.oga 01;33
.spx 01;33
.xspf 01;33

# documents
.doc 01;91
.ppt 01;91
.xls 01;91
.docx 01;91
.pptx 01;91
.xlsx 01;91
.odt 01;91
.ods 01;91
.odp 01;91
.pdf 01;91
.tex 01;91
.md 01;91
```


### Curl {#curl}

```rc
referer = ";auto"
progress-bar
show-error
```


### Inputrc {#inputrc}

This enables autocomplete for any program that uses `readline` and enabled `vi`
keybinding.

```rc
set editing-mode vi
set keymap vi
set convert-meta on

# for single press Tab results for when a partial or no completion is possible
set show-all-if-ambiguous on
# Tab: complete
set colored-stats On
set completion-ignore-case On
set completion-prefix-display-length 3
set menu-complete-display-prefix On
set mark-symlinked-directories On
set show-all-if-ambiguous On
set show-all-if-unmodified On
set visible-stats On
set show-mode-in-prompt on
set echo-control-characters off

"\C-p":history-search-backward
"\C-n":history-search-forward
```


### Editorconfig {#editorconfig}

```toml
# see http://editorconfig.org/

# top-most EditorConfig file
root = true

[*]
end_of_line = lf
insert_final_newline = true
indent_style = space
tab_width = 8
ident_size = 4
charset = utf-8
trim_trailing_whitespace = true

[*.{py,pl,rb}]
indent_style = space
indent_size = 4
charset = utf-8

[*.{c,cc,cpp,h,hpp}]
indent_style = tab
tab_width = 8
indent_size = 8

[*.{html,css,scss}]
indent_style = space
indent_size = 2
tab_width = 2
continuation_indent_size = 2
charset = utf-8

[*.{js,ts}]
indent_size = 2
tab_width = 2
continuation_indent_size = 2

[Makefile]
indent_style = tab

[*.{json,yml,yaml}]
indent_style = space
indent_size = 2
insert_final_newline = ignore

[*.snip]
indent_style = tab
indent_size = 4
tab_width = 4

[*.el]
indent_size = 2

[*.rs]
indent_size = 4
indent_style = space

[*.{sh,zsh,bash}]
indent_size = 8
indent_style = tab
```


### Skhdrc {#skhdrc}

Sets OSX keybindings

```rc
# terminal
cmd - return: /Applications/Alacritty.app/Contents/MacOS/alacritty

# editor
fn + cmd - e: ~/.bin/editor

# music
fn + cmd - f1: mpc toggle
fn + cmd - f2: mpc play
fn + cmd - f3: mpc pause
fn + cmd - f4: mpc prev
fn + cmd - f5: mpc next
fn + cmd - f6: mpc volume -10
fn + cmd - f7: mpc volume +10
```


### Zsh {#zsh}

My zsh setup if organized as following:

-   `.zshrc` includes all zsh files related to the configuration
-   `.zsh/aliases.zsh` holds all aliases I use
-   `.zsh/evals.zsh` holds all async evaluations, such as `pyenv` and `dircolors`
-   `.zsh/exports.zsh` holds all exported variables
-   `.zsh/git_aliases.zsh` holds all git related aliases
-   `.zsh/gpg_agent.zsh` handles GnuPG agent
-   `.zsh/history.zsh` configures how command history is saved
-   `.zsh/init.zsh` handles all important initialization that requires everything
    to work
-   `.zsh/keys.zsh` keybindings
-   `.zsh/plugins.txt` plugins that are managed with Antibody
-   `.zsh/stack.zsh` configures shell stack related configuration


#### plugins.txt {#plugins-dot-txt}

```text
mafredri/zsh-async
mengelbrecht/slimline
zsh-users/zsh-completions path:src kind:fpath
zdharma/fast-syntax-highlighting
chriskempson/base16-shell
zsh-users/zsh-history-substring-search
Tarrasch/zsh-autoenv
sobolevn/wakatime-zsh-plugin
docker/cli path:contrib/completion/zsh kind:fpath
skywind3000/z.lua
```


#### keys.zsh {#keys-dot-zsh}

```shell
bindkey -v
bindkey '\ew' kill-region
bindkey -s '\el' "ls\n"
bindkey '^r' history-incremental-search-backward
bindkey "^[[5~" up-line-or-history
bindkey "^[[6~" down-line-or-history
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
bindkey "^[[H" beginning-of-line
bindkey "^[[1~" beginning-of-line
bindkey "^[OH" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[4~" end-of-line
bindkey "^[OF" end-of-line
bindkey ' ' magic-space
bindkey "^F" forward-word
bindkey "^B" backward-word
bindkey '^[[Z' reverse-menu-complete
bindkey '^?' backward-delete-char
bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char
bindkey "\e[3~" delete-char
bindkey '^W' backward-kill-word
```


#### stack.zsh {#stack-dot-zsh}

```shell
DIRSTACKSIZE=8

# from: https://github.com/sorin-ionescu/prezto/blob/0a405494cae54e208ff550c1ba83380ed115410a/modules/directory/init.zsh
setopt autopushd pushdminus pushdsilent pushdtohome
setopt AUTO_CD              # Auto changes to a directory without typing cd.
setopt AUTO_PUSHD           # Push the old directory onto the stack on cd.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.
setopt PUSHD_TO_HOME        # Push to home directory when no argument is given.
setopt CDABLE_VARS          # Change directory to a path stored in a variable.
setopt MULTIOS              # Write to multiple descriptors.
setopt EXTENDED_GLOB        # Use extended globbing syntax.
unsetopt CLOBBER            # Do not overwrite existing files with > and >>.
                            # Use >! and >>! to bypass.

alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index
```


#### history.zsh {#history-dot-zsh}

```shell
# from: https://github.com/sorin-ionescu/prezto/blob/0a405494cae54e208ff550c1ba83380ed115410a/modules/history/init.zsh

setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing non-existent history.

#
# Variables
#

HISTFILE="${HISTFILE:-${ZDOTDIR:-$HOME}/.zhistory}"  # The path to the history file.
HISTSIZE=10000                   # The maximum number of events to save in the internal history.
SAVEHIST=10000                   # The maximum number of events to save in the history file.

#
# Aliases
#

# Lists the ten most used commands.
alias history-stat="history 0 | awk '{print \$2}' | sort | uniq -c | sort -n -r | head"
```


#### gpg-agent.zsh {#gpg-agent-dot-zsh}

```shell
# Enable gpg-agent if it is not running-
# from: https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/gpg-agent/gpg-agent.plugin.zsh
AGENT_SOCK=$(gpgconf --list-dirs | grep agent-socket | cut -d : -f 2)

if [[ ! -S $AGENT_SOCK ]]; then
  gpg-agent --daemon &>/dev/null
fi
export GPG_TTY=$TTY

# Set SSH to use gpg-agent if it's enabled
GNUPGCONFIG="${GNUPGHOME:-"$HOME/.gnupg"}/gpg-agent.conf"
if [[ -r $GNUPGCONFIG ]] && command grep -q enable-ssh-support "$GNUPGCONFIG"; then
  export SSH_AUTH_SOCK="$AGENT_SOCK.ssh"
  unset SSH_AGENT_PID
fi
```


#### exports.zsh {#exports-dot-zsh}

```shell
# general exports
export PROJECT_HOME=$HOME/workspace
export EDITOR=$HOME/.bin/editor
export VISUAL=$HOME/.bin/editor
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export KEYTIMEOUT=1 # vim mode key lag
export PYTHONSTARTUP="$HOME/.pythonrc"
export MAKEFLAGS="-j4 -l5"
export GPGKEY=0x7357E344D6C3C795
export LESS='-F -g -i -M -R -S -w -X -z-4'
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true'
export SSH_AUTH_SOCK=$HOME/.gnupg/S.gpg-agent.ssh

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

if [[ ${OSTYPE} == darwin* ]]; then
	export HOMEBREW_NO_AUTO_UPDATE=1
	# fzf
	source /usr/local/opt/fzf/shell/key-bindings.zsh
	source /usr/local/opt/fzf/shell/completion.zsh
else
	# fzf
	source /usr/share/fzf/key-bindings.zsh
	source /usr/share/fzf/completion.zsh
fi

export PATH="$HOME/.bin:$PATH"

export WORKSPACE="$HOME/workspace"
export RISCV_PATH="$WORKSPACE/opt/riscv64gc"

if [[ -d $RISCV_PATH ]]; then
	export PATH="$RISCV_PATH/bin:$PATH"
fi

### Plugins

## Slimline
export SLIMLINE_ENABLE_ASYNC_AUTOLOAD=0

# Go path
export GOPATH=$HOME/workspace/go
export PATH=$GOPATH/bin:$PATH

## Autoenv
export AUTOENV_FILE_ENTER=".hi"
export AUTOENV_FILE_LEAVE=".bye"

## Tmux
# autostart tmux
# from: https://github.com/zpm-zsh/tmux/blob/master/tmux.plugin.zsh

# Make sure we are not sshing to this shell or running within an i3 session
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ] || [ -n "$I3SOCK" ]; then
	export TMUX_AUTOSTART="false"
else
	export TMUX_AUTOSTART="true"
fi

if [ -f "$HOME/.env-secrets" ]; then
	source "$HOME/.env-secrets"
fi

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export WORKON_HOME=$HOME/.virtualenvs

# FZF
export FZF_DEFAULT_OPTS='--height 30% --layout=reverse --border'

if [ -f "$HOME/.poetry/bin/poetry" ]; then
	export PATH="$HOME/.poetry/bin:${PATH}"
fi

export GITLINE_REPO_INDICATOR='${reset}ᚴ'
export GITLINE_BRANCH='[${blue}${branch}${reset}]'
export SLIMLINE_RIGHT_PROMPT_SECTIONS="execution_time git vi_mode exit_status"
```


#### aliases.zsh {#aliases-dot-zsh}

```shell
## aliases

source $HOME/.zsh/git_aliases.zsh

alias dotfiles="cd ~/dotfiles"
alias fucking='sudo'
alias vi="vim"
alias pip-all="pip freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip install -U"
alias lessf="less +F"
#alias tmux="TERM=xterm-256color tmux"

alias c=clear

# less Colours
if [[ ${PAGER} == 'less' ]]; then
    (( ! ${+LESS_TERMCAP_mb} )) && export LESS_TERMCAP_mb=$'\E[1;31m'   # Begins blinking.
    (( ! ${+LESS_TERMCAP_md} )) && export LESS_TERMCAP_md=$'\E[1;31m'   # Begins bold.
    (( ! ${+LESS_TERMCAP_me} )) && export LESS_TERMCAP_me=$'\E[0m'      # Ends mode.
    (( ! ${+LESS_TERMCAP_se} )) && export LESS_TERMCAP_se=$'\E[0m'      # Ends standout-mode.
    (( ! ${+LESS_TERMCAP_so} )) && export LESS_TERMCAP_so=$'\E[7m'      # Begins standout-mode.
    (( ! ${+LESS_TERMCAP_ue} )) && export LESS_TERMCAP_ue=$'\E[0m'      # Ends underline.
    (( ! ${+LESS_TERMCAP_us} )) && export LESS_TERMCAP_us=$'\E[1;32m'   # Begins underline.
fi


# if exa exist, alias to ls
if (( ${+commands[exa]} )); then
    alias ls='exa'
    alias l='ls'
    alias ll='exa -l'
    alias lll='exa -l | less'
    alias lla='exa -la'
    alias llt='exa -T'
    alias llfu='exa -bghHliS --git'
else
    alias l='ls -1A'         # Lists in one column, hidden files.
    alias ll='ls -lh'        # Lists human readable sizes.
    alias lr='ll -R'         # Lists human readable sizes, recursively.
    alias la='ll -A'         # Lists human readable sizes, hidden files.
    alias lm='la | "$PAGER"' # Lists human readable sizes, hidden files through pager.
    alias lx='ll -XB'        # Lists sorted by extension (GNU only).
    alias lk='ll -Sr'        # Lists sorted by size, largest last.
    alias lt='ll -tr'        # Lists sorted by date, most recent last.
    alias lc='lt -c'         # Lists sorted by date, most recent last, shows change time.
    alias lu='lt -u'         # Lists sorted by date, most recent last, shows access time.
fi

alias sl='ls' # I often screw this up.

if (( $+commands[nvim] )); then
    alias vim="nvim"
fi


if (( $+commands[emacsclient] )); then
    alias e='emacsclient -c -n -a ""'
fi

alias editor='$EDITOR'
alias v='vim'

if (( $+commands[pacman] )); then
    alias pacall='sudo pacman -Syyu'
    alias paci='sudo pacman -S'
    alias pacrdeps='sudo pacman -Rsn'
fi

# Django
alias drunser='python manage.py runserver'
alias dmakemig='python manage.py makemigrations'
alias dmigrate='python manage.py migrate'
alias dshell='python manage.py shell'

if (( $+commands[ggrep] )); then
    export GREP_OPTIONS='-i --color'
    alias ggrep="ggrep $GREP_OPTIONS"
fi

alias ..="cd .."
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"

if [ -f "$HOME/.emacs.d/bin/doom" ]; then
    alias doom="$HOME/.emacs.d/bin/doom"
fi

dotfiles-update() { cd "$HOME/dotfiles" && ./install.sh; }

if (( $+commands[brew] )); then
    alias brewfile() {cd $HOME/dotfiles/roles/osx/tasks && brew bundle "$1" }
fi
```


#### git\_aliases.zsh {#git-aliases-dot-zsh}

```shell
# git
alias g='git'

# Branch (b)
alias gb='git branch'
alias gba='git branch --all --verbose'
alias gbc='git checkout -b'
alias gbd='git branch --delete'
alias gbD='git branch --delete --force'
alias gbl='git branch --verbose'
alias gbL='git branch --all --verbose'
alias gbm='git branch --move'
alias gbM='git branch --move --force'
alias gbr='git branch --move'
alias gbR='git branch --move --force'
alias gbs='git show-branch'
alias gbS='git show-branch --all'
alias gbv='git branch --verbose'
alias gbV='git branch --verbose --verbose'
alias gbx='git branch --delete'
alias gbX='git branch --delete --force'

# Commit (c)
alias gc='git commit --verbose'
alias gca='git commit --verbose --all'
alias gcm='git commit --message'
alias gcS='git commit -S --verbose'
alias gcSa='git commit -S --verbose --all'
alias gcSm='git commit -S --message'
alias gcam='git commit --all --message'
alias gco='git checkout'
alias gcO='git checkout --patch'
alias gcf='git commit --amend --reuse-message HEAD'
alias gcSf='git commit -S --amend --reuse-message HEAD'
alias gcF='git commit --verbose --amend'
alias gcSF='git commit -S --verbose --amend'
alias gcp='git cherry-pick --ff'
alias gcP='git cherry-pick --no-commit'
alias gcr='git revert'
alias gcR='git reset "HEAD^"'
alias gcs='git show'
alias gcsS='git show --pretty=short --show-signature'
alias gcl='git-commit-lost'
alias gcy='git cherry -v --abbrev'
alias gcY='git cherry -v'

# Conflict (C)
alias gCl='git --no-pager diff --name-only --diff-filter=U'
alias gCa='git add $(gCl)'
alias gCe='git mergetool $(gCl)'
alias gCo='git checkout --ours --'
alias gCO='gCo $(gCl)'
alias gCt='git checkout --theirs --'
alias gCT='gCt $(gCl)'

# Data (d)
alias gd='git ls-files'
alias gdc='git ls-files --cached'
alias gdx='git ls-files --deleted'
alias gdm='git ls-files --modified'
alias gdu='git ls-files --other --exclude-standard'
alias gdk='git ls-files --killed'
alias gdi='git status --porcelain --short --ignored | sed -n "s/^!! //p"'

# Fetch (f)
alias gf='git fetch'
alias gfa='git fetch --all'
alias gfc='git clone'
alias gfcr='git clone --recurse-submodules'
alias gfm='git pull'
alias gfr='git pull --rebase'

# Grep (g)
alias gg='git grep'
alias ggi='git grep --ignore-case'
alias ggl='git grep --files-with-matches'
alias ggL='git grep --files-without-matches'
alias ggv='git grep --invert-match'
alias ggw='git grep --word-regexp'

# Index (i)
alias gia='git add'
alias giA='git add --patch'
alias giu='git add --update'
alias gid='git diff --no-ext-diff --cached'
alias giD='git diff --no-ext-diff --cached --word-diff'
alias gii='git update-index --assume-unchanged'
alias giI='git update-index --no-assume-unchanged'
alias gir='git reset'
alias giR='git reset --patch'
alias gix='git rm -r --cached'
alias giX='git rm -rf --cached'

# Log (l)
alias gl='git log --topo-order --pretty=format:"${_git_log_medium_format}"'
alias gls='git log --topo-order --stat --pretty=format:"${_git_log_medium_format}"'
alias gld='git log --topo-order --stat --patch --full-diff --pretty=format:"${_git_log_medium_format}"'
alias glo='git log --topo-order --pretty=format:"${_git_log_oneline_format}"'
alias glg='git log --topo-order --all --graph --pretty=format:"${_git_log_oneline_format}"'
alias glb='git log --topo-order --pretty=format:"${_git_log_brief_format}"'
alias glc='git shortlog --summary --numbered'
alias glS='git log --show-signature'

# Merge (m)
alias gm='git merge'
alias gmC='git merge --no-commit'
alias gmF='git merge --no-ff'
alias gma='git merge --abort'
alias gmt='git mergetool'

# Push (p)
alias gp='git push'
alias gpf='git push --force-with-lease'
alias gpF='git push --force'
alias gpa='git push --all'
alias gpA='git push --all && git push --tags'
alias gpt='git push --tags'
alias gpc='git push --set-upstream origin "$(git-branch-current 2> /dev/null)"'
alias gpp='git pull origin "$(git-branch-current 2> /dev/null)" && git push origin "$(git-branch-current 2> /dev/null)"'

# Rebase (r)
alias gr='git rebase'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias gri='git rebase --interactive'
alias grs='git rebase --skip'

# Remote (R)
alias gR='git remote'
alias gRl='git remote --verbose'
alias gRa='git remote add'
alias gRx='git remote rm'
alias gRm='git remote rename'
alias gRu='git remote update'
alias gRp='git remote prune'
alias gRs='git remote show'
alias gRb='git-hub-browse'

# Stash (s)
alias gs='git stash'
alias gsa='git stash apply'
alias gsx='git stash drop'
alias gsX='git-stash-clear-interactive'
alias gsl='git stash list'
alias gsL='git-stash-dropped'
alias gsd='git stash show --patch --stat'
alias gsp='git stash pop'
alias gsr='git-stash-recover'
alias gss='git stash save --include-untracked'
alias gsS='git stash save --patch --no-keep-index'
alias gsw='git stash save --include-untracked --keep-index'

# Submodule (S)
alias gS='git submodule'
alias gSa='git submodule add'
alias gSf='git submodule foreach'
alias gSi='git submodule init'
alias gSI='git submodule update --init --recursive'
alias gSl='git submodule status'
alias gSm='git-submodule-move'
alias gSs='git submodule sync'
alias gSu='git submodule foreach git pull origin master'
alias gSx='git-submodule-remove'

# Tag (t)
alias gt='git tag'
alias gtl='git tag -l'
alias gts='git tag -s'
alias gtv='git verify-tag'

# Working Copy (w)
alias gws='git status --ignore-submodules=${_git_status_ignore_submodules} --short'
alias gwS='git status --ignore-submodules=${_git_status_ignore_submodules}'
alias gwd='git diff --no-ext-diff'
alias gwD='git diff --no-ext-diff --word-diff'
alias gwr='git reset --soft'
alias gwR='git reset --hard'
alias gwc='git clean -n'
alias gwC='git clean -f'
alias gwx='git rm -r'
alias gwX='git rm -rf'
```


#### init.zsh {#init-dot-zsh}

```shell
# General init file

autoload -Uz compinit
compinit -C -i

setopt autocd
setopt extendedglob
setopt NO_NOMATCH
setopt CORRECT

setopt auto_list # automatically list choices on ambiguous completion
setopt auto_menu # automatically use menu completion
setopt always_to_end # move cursor to end if word had one match

# disable keyboard beep
unsetopt BEEP

# navidate completion
zstyle ':completion:*' menu select
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
_approximate # enable approximate matches for completion

## Tmux
function _tmux_autostart(){
    if [[ "$TMUX_AUTOSTART" == "true" && -z "$TMUX" ]]; then
        tmux attach || tmux new
        exit 0
    fi
  precmd_functions=(${precmd_functions#_tmux_autostart})
}

precmd_functions+=( _tmux_autostart )

# from: http://www.zsh.org/mla/users/2001/msg00870.html
custom-backward-delete-word() {
    local WORDCHARS=${WORDCHARS/\//}
    zle backward-delete-word
}

zle -N custom-backward-delete-word
bindkey '^W' custom-backward-delete-word


# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=$HOME/.cache/heroku/autocomplete/zsh_setup \
    && test -f $HEROKU_AC_ZSH_SETUP_PATH \
    && source $HEROKU_AC_ZSH_SETUP_PATH

# setup custom completion path
fpath=($HOME/.zsh/completions $fpath)
```


#### evals.zsh {#evals-dot-zsh}

```shell
#!/usr/bin/env zsh

set_pyenv() {
    if (( ${+commands[pyenv]} )); then
        _set_pyenv() {
            export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
            export PYENV_VIRTUALENV_DISABLE_PROMPT=1
            eval "$(pyenv init - zsh --no-rehash)"
            eval "$(pyenv virtualenv-init -)"
            . $(pyenv root)/completions/pyenv.zsh
        }
        async_start_worker pyenv_worker -n
        async_register_callback pyenv_worker _set_pyenv
        async_job pyenv_worker sleep 0.1
    fi
}


set_dircolors(){
    _set_dircolors() {
        if (( $+commands[dircolors] )); then
            eval $(dircolors -b $HOME/.dircolors )
        elif (( $+commands[gdircolors] )); then
            eval $(gdircolors -b $HOME/.dircolors )
        fi
    }
    async_start_worker dircolors_worker -n
    async_register_callback dircolors_worker _set_dircolors
    async_job dircolors_worker sleep 0.1
}

set_tmuxenv(){
    _set_tmuxenv() {
        if (( $+commands[tmux] )); then
	    tmux set-environment -g PATH $PATH
        fi
    }
    async_start_worker tmux_worker -n
    async_register_callback tmux_worker _set_tmuxenv
    async_job tmux_worker sleep 0.1
}

init_jobs() {
    async_init

    set_pyenv
    set_dircolors
    set_tmuxenv
}

init_jobs
```


#### .zshrc {#dot-zshrc}

For performance, this first checks if the generated plugin bundle is in
`$HOME/.zsh_plugins.sh`. If not, it will generate upon start.

```shell
#!/usr/bin/env zsh

source $HOME/.zsh/exports.zsh

if [ -f "$HOME/.zsh_plugins.sh" ]; then
	source $HOME/.zsh_plugins.sh
else
	echo "Bundling zsh plugins..."
	antibody bundle <$HOME/.zsh/plugins.txt >$HOME/.zsh_plugins.sh
	source $HOME/.zsh_plugins.sh
fi

source $HOME/.zsh/init.zsh
source $HOME/.zsh/evals.zsh
source $HOME/.zsh/history.zsh
source $HOME/.zsh/stack.zsh
source $HOME/.zsh/keys.zsh
source $HOME/.zsh/aliases.zsh
source $HOME/.zsh/gpg-agent.zsh

if [ -f "$HOME/.cargo/env" ]; then
	source $HOME/.cargo/env
fi

# base16 theme
base16_gruvbox-dark-hard
```


### Git {#git}


#### Git config {#git-config}

The `user` section is auto generated with Chezmoi.

```conf
[user]
    name = {{ .name }}
    email = {{ .email }}
    signingkey = {{ .gpg_keyid }}
[core]
    excludesfile = ~/.gitignore_global
    editor = ~/.bin/editor
    whitespace = trailing-space,space-before-tab
    hooksPath = ~/.gittemplates/hooks
[filter "media"]
    required = true
    clean = git media clean %f
    smudge = git media smudge %f
[push]
    default = current
    followTags = true
[alias]
    unadd = reset HEAD
    undo-commit = reset --soft HEAD^
    ec = config --global -e # edit gitconfig
    ls = log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate # List commits in short form, with colors and branch/tag annotations.
    ll = log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --numstat # List commits showing changed files
    lds = log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=short # List oneline commits showing dates
    ld = log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=relative # List oneline commits showing relative dates
    le = log --oneline --decorate #Default look for short git log
    logtree = "log --graph --oneline --decorate --all" # same as above, but with graph
    filelog = log -u # See all the commits related to a file, with the diff of the changes with git log -u
    dl = "!git ll -1" # Show modified files in last commit
    dlc = diff --cached HEAD^ # Show a diff last commit
    dr  = "!f() { git diff "$1"^.."$1"; }; f" # Show content (full diff) of a commit given a revision
    lc  = "!f() { git ll "$1"^.."$1"; }; f" # ^
    diffr  = "!f() { git diff "$1"^.."$1"; }; f" # ^
    la = "!git config -l | grep alias | cut -c 7-" # List all your Aliases
    permission-reset = !git diff -p -R | grep -E \"^(diff|(old|new) mode)\" | git apply
    co = checkout
    br = branch
    ci = commit
    st = status
    last = log -1 HEAD
    web = instaweb --httpd=webrick
    webstop = instaweb --httpd=webrick --stop
    permission-reset = !git diff -p -R | grep -E \"^(diff|(old|new) mode)\" | git apply
    dsf = "!f() { [ \"$GIT_PREFIX\" != \"\" ] && cd "$GIT_PREFIX"; git diff --color $@ | diff-so-fancy | less --tabs=4 -RFX; }; f"
    git = !exec git
    pushall = !git remote | xargs -L1 git push --all
[filter "gitignore"]
    clean = "sed '/#gitignore$/'d"
    smudge = cat
[grep]
    extendRegexp = true
    lineNumber = true
[color "diff-highlight"]
    oldNormal = red bold
    oldHighlight = red bold 52
    newNormal = green bold
    newHighlight = green bold 22
[stash]
    showPatch = true
[log]
    decorate = full
[merge]
    conflictstyle = diff3
    stat = true
[status]
    showUntrackedFiles = all
[commit]
    verbose = true
    template = ~/.gittemplates/commit
[advice]
    pushNonFastForward = false
    statusHints = false
[diff]
    renames = copies
    mnemonicprefix = true
[diff "hex"]
    textconv = hexdump -v -C
    binary = true
[diff "zip"]
    textconv = unzip -v
[diff "pdf"]
    textconv = mdls
[diff "bin"]
    textconv = hexdump -v -C
[github]
    user = {{ .github_user }}
[gitlab]
    user = seds
[flake8]
    strict = true
[filter "lfs"]
    process = git-lfs filter-process
    required = true
    clean = git-lfs clean -- %f
    smudge = git-lfs smudge -- %f
[init]
    templatedir = ~/.gittemplates
    defaultBranch = main
[merge "ours"]
    driver = true
[remote "origin"]
    prune = true
[pull]
    rebase = true
```


#### Git templates {#git-templates}

I keep a few Git templates, which are applied on `git init` or on `clone`.

<!--list-separator-->

-  Show a small reminder of commits when running `git commit`

    Note: The new line at the beginning is important.

    ```text
    # A properly formed Git commit subject line should always be able to complete
    # the following sentence:
    #     * If applied, this commit <will your subject line here>
    #
    # [Add/Fix/Remove/Update/Refactor/Document/Style]: [issue #id] [summary]


    # The 7 rules of a great commit message
    #    1. Separate subject from body with a blank line
    #    2. Limit the subject line to 50 characters
    #    3. Capitalize the subject line
    #    4. Do not end the subject line with a period
    #    5. Use the imperative mood in the subject line
    #    6. Wrap the body at 72 characters
    #    7. Use the body to explain what and why vs. how
    ```


### Vim {#vim}


#### vimrc {#vimrc}

The following configuration requires both all plugins to be install and VimPlug.

```viml
" Ben Mezger
" some configs from:
" https://github.com/rstacruz/vim-opinion/

if has('python3')
  silent! python3 1
endif

source ~/.vim/plugins.vim " include plugs

" default file encoding and unicode
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb                     " vim will put a 'byte order mark' (
                             " or BOM for short) at the start of Unicode files
set fileformats=unix,mac,dos " recognize file formats

set backspace=indent,eol,start " make backspace work like most other apps

" space > tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab " insert space character when tab is pressed
set modeline
set expandtab " helps with backspacing because of expandtab
set textwidth=80
set autoindent

" options
" opening a new file when the current buffer has unsaved changes causes files " to be hidden instead of closed.
" The unsaved changes can still be accessed by typing :ls and then :b[N],
" where [N] is the number of a buffer
" see: http://usevim.com/2012/10/19/vim101-set-hidden/
set hidden         " don't care about closing modified buffers
set showcmd        " display incomplete commands
set history=50     " keep 50 lines of command line history
let mapleader=','  " use ',' as mapleader
set colorcolumn=80 " Color in column 80
set list listchars=tab:»·,trail:·,nbsp:· " Display extra whitespace
set cursorline     " find cursor faster.

               " searching
set hlsearch   " highlight all search matches
set incsearch  " start searching when you type the first character of the search string
set ignorecase " searching is not case sensitive
set smartcase  " when 'ignorecase' and 'smartcase' are both on, if a
               " pattern contains an uppercase letter, it is case sensitive,
               " otherwise, it is not
set gdefault   " sub all matches in a line by default

set binary        " makes Vim more suitable for editing binary files
set shell=/bin/sh " use sh as default shell

" programming
syntax on
set cindent          " enables automatic indenting c-style
set cinoptions=l1,j1 " affects the way cindent reindents lines
set showmatch        " flashes matching brackets or parenthasis
set matchtime=3      " how long to flash brackets

" backups
set nobackup       " don't backup
set nowritebackup  " don't make backup before overwritting
set noswapfile     " fuck swapfiles
set directory=/tmp " dir for tmp files

" jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" info
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set numberwidth=5   " width of number column
set showmode        " shows vi mode in lower left
set cmdheight=1     " more room for error msgs
set scrolloff=4     " places a couple lines between the current line and the screen edge
set sidescrolloff=2 " places a couple lines between the current column and the screen edge
set laststatus=2    " status bar always visible
set ttyfast         " improve redrawing
set lazyredraw      " will not redraw the screen while running macros (goes faster)

if has('linebreak')
  try
    set breakindent             " visually indent wrapped lines
    let &showbreak='↳'
  catch /E518:/
    " Unknown option: breakindent
  endtry
endif

" menu compilation

set wildmenu                    " enhanced ed command completion
set wildignore+=*.~             " ignore compiled objects and backups
set wig+=*.o,*.obj,*.pyc
set wig+=.sass-cache,tmp
set wildmode=longest:full,list:full

" appearance
colorscheme base16-gruvbox-dark-hard
let base16colorspace=256 " Access colors present in 256 colorspace
set background=dark

" statusline config from -> http://stackoverflow.com/a/5380230/6744969
hi User1 ctermfg=16 ctermbg=234
hi User2 ctermfg=196 ctermbg=234
hi User3 ctermfg=171 ctermbg=234
hi User4 ctermfg=70 ctermbg=234
hi User5 ctermfg=226 ctermbg=234

" Gitgutter in statusline
function! GitStatus()
    return join(filter(map(['A','M','D'], {i,v -> v.': '.GitGutterGetHunkSummary()[i]}), 'v:val[-1:]'), ' ')
endfunction

set statusline+=%{GitStatus()}
set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*\ \|%{&fo}\|        "display format-options
set statusline +=%{FugitiveStatusline()} " git branch
set statusline+=%{GitStatus()}
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor

" keybindings to make life easier
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"
" plugs
"

" neomake
let g:neomake_open_list = 2 " open list automatically
" enable linters
call neomake#configure#automake('nrwi', 500)

augroup my_neomake_qf
    autocmd!
    autocmd QuitPre * if &filetype !=# 'qf' | lclose | endif
augroup END

let g:neomake_python_enabled_makers = ['mypy', 'flake8']
augroup my_custom_maker
    au!
    au Filetype *.py let b:neomake_python_enabled_makers = ['mypy']
augroup END

"" vim-gitgutter
set updatetime=250                  " . The delay is governed by vim's updatetime option
let g:gitgutter_highlight_lines = 0 " highlight line

"" incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

"" vim-easy align
" start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


"" vim-markdown
let g:vim_markdown_folding_disabled = 1 " Disable folding

" Allow for TOC window to auto-fit when it's possible to it to shrink
let g:vim_markdown_toc_autofit = 1

" fenced code block
let g:vim_markdown_fenced_languages = ['c++=cpp', 'viml=vim', 'python=py', 'c=c']

" used as $x^2$, $$x^2$$, escapable as \$x\$ and \$\$x\$\$
let g:vim_markdown_math = 1


"" Rainbow Parentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rainbow_active = 1
au BufRead,BufNewFile *.{md,txt} setlocal textwidth=80

" indentLine
let g:indentLine_setColors = 1

" disable preview window
set completeopt-=preview

" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif
```


#### plugins.vim {#plugins-dot-vim}

```viml
call plug#begin('~/.vim/plugged')

Plug 'danielwe/base16-vim'                          " base16 themes
Plug 'tpope/vim-fugitive'                           " git <3
Plug 'tpope/vim-git'                                " vim Git runtime files
Plug 'editorconfig/editorconfig-vim'                " editorConfig plugin for Vim
Plug 'airblade/vim-gitgutter'                       " show what lines have changed when inside a git repo
Plug 'haya14busa/incsearch.vim'                     " a better insearch
Plug 'plasticboy/vim-markdown', {'for': 'markdown'} " Markdown vim mode
Plug 'tpope/vim-eunuch'                             " helpers for UNIX
Plug 'easymotion/vim-easymotion'                    " Vim motions on speed
Plug 'luochen1990/rainbow'                          " Rainbow Parentheses Improved
Plug 'neomake/neomake'                              " lint checker
Plug 'Yggdroot/indentLine'                          " Display the indention levels with thin vertical line
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins', 'for': 'python'} " Better Python syntax
Plug 'wakatime/vim-wakatime' " Code tracking
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

" Add plugins to &runtimepath
call plug#end()
```


#### nvimrc {#nvimrc}

This allows `nvim` to read `vim`'s configuration.

```viml
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc
```


### Emacs {#emacs}

I am not a big fan of editor/shell framework, but Doom Emacs is really an
exception.


#### init.el {#init-dot-el}

Enabled plugins

```elisp
(doom! :completion
  (company
    +auto +tng) ; the ultimate code completion backend
  (ivy +fuzzy) ; a search engine for love and life

  :ui
  deft
  doom              ; what makes DOOM look the way it does
  ;; doom-dashboard    ; a nifty splash screen for Emacs
  doom-quit         ; DOOM quit-message prompts when you quit Emacs
  fill-column       ; a `fill-column' indicator
  hl-todo           ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
  ;; indent-guides     ; highlighted indent columns
  modeline          ; snazzy, Atom-inspired modeline, plus API
  nav-flash         ; blink the current line after jumping
  ophints           ; highlight the region an operation acts on
  (popup            ; tame sudden yet inevitable temporary windows
    +all             ; catch all popups that start with an asterix
    +defaults)       ; default popup rules
                                        ;pretty-code       ; replace bits of code with pretty symbols
  ;;tabs              ; an tab bar for Emacs
  ;;treemacs          ; a project drawer, like neotree but cooler
  ;;unicode           ; extended unicode support for various languages
  vc-gutter         ; vcs diff in the fringe
  vi-tilde-fringe   ; fringe tildes to mark beyond EOB
  window-select     ; visually switch windows
  workspaces        ; tab emulation, persistence & separate workspaces
  ;;zen               ; distraction-free coding or writing

  :editor
  (evil +everywhere); come to the dark side, we have cookies
  file-templates    ; auto-snippets for empty files
  ;; fold              ; (nigh) universal code folding
  (format +onsave)  ; automated prettiness
  ;;god               ; run Emacs commands without modifier keys
  ;;lispy             ; vim for lisp, for people who don't like vim
  ;; multiple-cursors  ; editing in many places at once
  ;;objed             ; text object editing for the innocent
  ;;parinfer          ; turn lisp into python, sort of
  rotate-text       ; cycle region at point between text candidates
  snippets          ; my elves. They type so I don't have to
  ;;word-wrap         ; soft wrapping with language-aware indent

  :emacs
  (undo +tree)
  dired             ; making dired pretty [functional]
  electric          ; smarter, keyword-based electric-indent
  ibuffer           ; interactive buffer management
  vc                ; version-control and Emacs, sitting in a tree

  :term
  eshell            ; a consistent, cross-platform shell (WIP)
  ;;shell             ; a terminal REPL for Emacs
  ;;term              ; terminals in Emacs
  ;;vterm             ; another terminals in Emacs

  :checkers
  ;;syntax              ; tasing you for every semicolon you forget
  spell             ; tasing you for misspelling mispelling
  grammar           ; tasing grammar mistake every you make

  :tools
  ;;ansible
  debugger          ; FIXME stepping through code, to help you add bugs
  ;;direnv
  (docker +lsp)
  editorconfig      ; let someone else argue about tabs vs spaces
  ;;ein               ; tame Jupyter notebooks with emacs
  (eval +overlay)     ; run code, run (also, repls)
  ;;gist              ; interacting with github gists
  (lookup           ; helps you navigate your code and documentation
    +docsets)        ; ...or in Dash docsets locally
  (lsp +eglot)
  (magit +forge)     ; a git porcelain for Emacs
  make              ; run make tasks from Emacs
  ;;pass              ; password manager for nerds
  ;;pdf               ; pdf enhancements
  ;;prodigy           ; FIXME managing external services & code builders
  ;;rgb               ; creating color strings
  terraform         ; infrastructure as code
  ;;tmux              ; an API for interacting with tmux
  ;;upload            ; map local to remote projects via ssh/ftp
  biblio

  :lang
  ;;agda              ; types of types of types of types...
  (cc +lsp)                ; C/C++/Obj-C madness
  (yaml +lsp)
  ;;clojure           ; java with a lisp
  ;;common-lisp       ; if you've seen one lisp, you've seen them all
  ;;coq               ; proofs-as-programs
  ;;crystal           ; ruby at the speed of c
  ;;csharp            ; unity, .NET, and mono shenanigans
  data              ; config/data formats
  ;;elixir            ; erlang done right
  ;;elm               ; care for a cup of TEA?
  emacs-lisp        ; drown in parentheses
  ;;erlang            ; an elegant language for a more civilized age
  ;;ess               ; emacs speaks statistics
  ;;faust             ; dsp, but you get to keep your soul
  ;;fsharp           ; ML stands for Microsoft's Language
  (go +lsp)                ; the hipster dialect
  ;;(haskell +dante)  ; a language that's lazier than I am
  ;;hy                ; readability of scheme w/ speed of python
  ;;idris             ;
  ;;(java +meghanada) ; the poster child for carpal tunnel syndrome
  ;;javascript        ; all(hope(abandon(ye(who(enter(here))))))
  ;;julia             ; a better, faster MATLAB
  ;;kotlin            ; a better, slicker Java(Script)
  latex             ; writing papers in Emacs has never been so fun
  ;;lean
  ;;factor
  ;;ledger            ; an accounting system in Emacs
  ;;lua               ; one-based indices? one-based indices
  markdown          ; writing docs for people to ignore
  ;;nim               ; python + lisp at the speed of c
  ;;nix               ; I hereby declare "nix geht mehr!"
  ;;ocaml             ; an objective camel
  (org              ; organize your plain life in plain text
    +roam
    +hugo
    +journal
    +gnuplot
    +pancoc
    +dragndrop       ; drag & drop files/images into org buffers
    +journal)
  ;;+jupyter        ; ipython/jupyter support for babel
  ;;+pandoc          ; export-with-pandoc support
  ;;+pomodoro        ; be fruitful with the tomato technique
  ;; +present)        ; using org-mode for presentations
  ;;perl              ; write code no one else can comprehend
  ;;php               ; perl's insecure younger brother
  ;;plantuml          ; diagrams for confusing people more
  ;;purescript        ; javascript, but functional
  (python +pyenv)            ; beautiful is better than ugly
  ;;qt                ; the 'cutest' gui framework ever
  ;;racket            ; a DSL for DSLs
  rest              ; Emacs as a REST client
  ;;rst               ; ReST in peace
  ;;ruby              ; 1.step {|i| p "Ruby is #{i.even? ? 'love' : 'life'}"}
  rust                ; Fe2O3.unwrap().unwrap().unwrap().unwrap()
  ;;scala             ; java, but good
  ;;scheme            ; a fully conniving family of lisps
  (sh +lsp)                ; she sells {ba,z,fi}sh shells on the C xor
  ;;solidity          ; do you need a blockchain? No.
  ;;swift             ; who asked for emoji variables?
  ;;terra             ; Earth and Moon in alignment for performance.
  ;;web               ; the tubes

  :email
  (mu4e +gmail)
  ;;notmuch
  ;;(wanderlust +gmail)

  :app
  ;;calendar
  ;;irc               ; how neckbeards socialize
  (rss +org)        ; emacs as an RSS reader
  ;;twitter           ; twitter client https://twitter.com/vnought

  :config
  ;;literate
  (default +bindings +smartparens)

  :os
  macos)
```


#### packages.el {#packages-dot-el}

Some custom packages I use

```elisp
(package! pyenv-mode-auto)
(package! wakatime-mode)
(package! ob-mermaid)
(package! org-roam-server)
(package! yasnippet-snippets)
(package! org-ref)
(package! citeproc-org)
(package! helm
  :disable t)
```


#### config.el {#config-dot-el}

<!--list-separator-->

-  Emacs doom configuration

    ```elisp
    (setq user-full-name "Ben Mezger"
      user-mail-address "me@benmezger.nl")

    (setq doom-font (font-spec :family "Hack" :size 14))
    (setq doom-theme 'doom-monokai-spectrum)
    (setq display-line-numbers-type t)

    (display-time-mode 1)
    (display-battery-mode 1)
    (toggle-frame-maximized)
    ```

<!--list-separator-->

-  LSP and completion

    ```elisp
    (after! lsp-mode
      :config
      (setq lsp-response-timeout 90000))

    (after! company-lsp
      :config
      (push 'company-lsp company-backends)
      (setq company-lsp-async t)
      (setq company-lsp-cache-candidates t)
      (setq company-lsp-enable-recompletion t))

    (after! company
      :config
      (setq company-selection-wrap-around t)
      (setq company-minimum-prefix-length 1)
      (setq company-idle-delay 0))
    ```

<!--list-separator-->

-  Doom modeline

    ```elisp
    (after! doom-modeline
      :config

      (set-face-attribute 'mode-line nil :family "Hack" :height 125)
      (set-face-attribute 'mode-line-inactive nil :family "Hack" :height 125)

      (setq doom-modeline-buffer-file-name-style 'truncate-upto-project)

      (setq doom-modeline-icon (display-graphic-p))
      (setq doom-modeline-major-mode-icon t)
      (setq doom-modeline-major-mode-color-icon t)

      (setq doom-modeline-buffer-state-icon t)
      (setq doom-modeline-buffer-modification-icon t)

      (setq doom-modeline-enable-word-count t)
      (setq doom-modeline-buffer-encoding t)
      (setq doom-modeline-indent-info t)

      (setq doom-modeline-mu4e nil)
      (setq doom-modeline-irc nil)

      (setq doom-modeline-env-version t)
      (setq doom-modeline-env-load-string "...")

      (setq doom-modeline-continuous-word-count-modes
        '(markdown-mode gfm-mod))

      ;; Don’t compact font caches during GC.
      (setq inhibit-compacting-font-caches t))

    ```

<!--list-separator-->

-  Flycheck

    ```elisp
    (after! flycheck
      :config
      (setq flycheck-check-syntax-automatically '(save mode-enable)))
    ```

<!--list-separator-->

-  Ivy

    Keep history of recent buffers

    ```elisp
    (after! ivy
      :config
      (setq enable-recursive-minibuffers t)

      ;; enable this if you want `swiper' to use it
      (setq search-default-mode #'char-fold-to-regexp)
      (setq ivy-re-builders-alist
        '((swiper . ivy--regex-plus)
           (counsel-rg . ivy--regex-plus)
           (t      . ivy--regex-fuzzy)))

      (setq ivy-bibtex-default-action 'ivy-bibtex-insert-key)

      (defun eh-ivy-return-recentf-index (dir)
        (when (and (boundp 'recentf-list)
                recentf-list)
          (let ((files-list
                  (cl-subseq recentf-list
                    0 (min (- (length recentf-list) 1) 20)))
                 (index 0))
            (while files-list
              (if (string-match-p dir (car files-list))
                (setq files-list nil)
                (setq index (+ index 1))
                (setq files-list (cdr files-list))))
            index)))

      (defun eh-ivy-sort-file-function (x y)
        (let* ((x (concat ivy--directory x))
                (y (concat ivy--directory y))
                (x-mtime (nth 5 (file-attributes x)))
                (y-mtime (nth 5 (file-attributes y))))
          (if (file-directory-p x)
            (if (file-directory-p y)
              (let ((x-recentf-index (eh-ivy-return-recentf-index x))
                     (y-recentf-index (eh-ivy-return-recentf-index y)))
                (if (and x-recentf-index y-recentf-index)
                  ;; Directories is sorted by `recentf-list' index
                  (< x-recentf-index y-recentf-index)
                  (string< x y)))
              t)
            (if (file-directory-p y)
              nil
              ;; Files is sorted by mtime
              (time-less-p y-mtime x-mtime)))))

      (add-to-list 'ivy-sort-functions-alist
        '(read-file-name-internal . eh-ivy-sort-file-function)))
    ```

<!--list-separator-->

-  Org

    ```elisp
    (after! org
      :config
      (setq org-log-done 'time)
      (setq org-clock-persist 'history)
      (setq org-directory "~/workspace/org")
      (setq org-archive-location "archives/%s_archive::")
      (setq org-agenda-files (list org-directory org-roam-directory))
      (org-clock-persistence-insinuate)
      (setq-default org-catch-invisible-edits 'smart)
      (setq org-log-into-drawer t)
      (setq org-agenda-inhibit-startup t)
      (add-hook! 'org-mode-hook #'turn-on-auto-fill)
      (setq bibtex-completion-bibliography (concat org-directory "/bibliography.bib"))

      (setq org-todo-keywords
        '((sequence "TODO(t!)" "CURRENT(u!)" "WAIT(w@/!)" "NEXT(n!)" "PROJ(o!)" "|")
           (sequence "READ(!)")
           (sequence "|" "DONE(d!)" "CANCELED(c!)"))
        org-todo-keyword-faces
        '(("CURRENT"  . "orange")
           ("TODO" . "systemRedColor")
           ("READ" . "systemOrangeColor")
           ("HOLD"  . "indianRed")
           ("WAIT" . "salmon1")
           ("PROJ" . "systemYellowColor")))

      (setq org-capture-templates
        '(
           ("c" "Code" entry (file "~/workspace/org/code.org")
             (file "~/workspace/org/templates/code-snippet.capture"))
           ("n" "Note" entry (file+olp "~/workspace/org/notes.org" "Inbox")
             "* %?\nEntered on %U\n  %i\n  %a")
           ("t" "Todo" entry (file "~/workspace/org/todos.org")
             "* TODO %?\n %i\n  %a")
           ("r" "Register new book" entry (file+olp "~/workspace/org/notes.org" "Books")
             (file "~/workspace/org/templates/new-book.capture"))
           ("d" "Decision note" entry (file "~/workspace/org/decisions.org")
             (file "~/workspace/org/templates/decision.capture"))
           ("w" "Weekly journal" entry (file+olp+datetree "~/workspace/org/journal/weekly.org" "Weekly notes")
             (file "~/workspace/org/templates/weekly-journal.capture") :tree-type week)))


      (setq ob-async-no-async-languages-alist '("gnuplot" "mermaid")))
    ```

<!--list-separator-->

-  Orgroam

    ```elisp
    (after! org-roam
      :defer t
      (setq org-roam-directory "~/workspace/org/roam")
      (setq org-roam-index-file (concat org-roam-directory "/" "index.org"))

      (setq org-roam-capture-templates
        '(("d" "default" plain (function org-roam-capture--get-point)
            "%?"
            :file-name "%(format-time-string \"%Y-%m-%d--%H-%M-%SZ--${slug}\" (current-time) t)"
            :head "#+TITLE: ${title}
    #+DATE: %T
    #+FILETAGS: %^G
    #+SETUPFILE: %(concat (file-name-as-directory org-directory) \"hugo.setup\")
    #+HUGO_SLUG: ${slug}
    #+HUGO_TAGS: %^{Hugo tags}

    - tags :: "
            :unnarrowed t)
           ("p" "private" plain (function org-roam-capture--get-point)
             "%?"
             :file-name "private/%(format-time-string \"%Y-%m-%d--%H-%M-%SZ--${slug}\" (current-time) t)"
             :head "#+TITLE: ${title}
    #+DATE: %T
    #+FILETAGS: :personal:%^G
    #+HUGO_SLUG: ${slug}
    "
             :unnarrowed t)))

      (defun custom-org-protocol-focus-advice (orig &rest args)
        (x-focus-frame nil)
        (apply orig args))

      (advice-add 'org-roam-protocol-open-ref :around
        #'custom-org-protocol-focus-advice)
      (advice-add 'org-roam-protocol-open-file :around
        #'custom-org-protocol-focus-advice))
    ```

    Easily exports all my roams to my personal blog (defined in my `SETUPFILE`).

    ```elisp
    (after! (org org-roam)
      :defer t
      (defun benmezger/org-roam-export-all ()
        "Re-exports all Org-roam files to Hugo markdown."
        (interactive)
        (dolist (f (org-roam--list-all-files))
          (with-current-buffer (find-file f)
            (when (s-contains? "SETUPFILE" (buffer-string))
              (org-hugo-export-wim-to-md)))))

      (defun benmezger/org-roam--backlinks-list (file)
        (when (org-roam--org-roam-file-p file)
          (mapcar #'car (org-roam-db-query
                          [:select :distinct [from]
                            :from links
                            :where (= to $s1)
                            :and from :not :like $s2] file "%private%"))))

      (defun benmezger/org-export-preprocessor (_backend)
        (when-let ((links (benmezger/org-roam--backlinks-list (buffer-file-name))))
          (insert "\n** Backlinks\n")
          (dolist (link links)
            (insert (format "- [[file:%s][%s]]\n"
                      (file-relative-name link org-roam-directory)
                      (org-roam--get-title-or-slug link))))))

      (add-hook 'org-export-before-processing-hook #'benmezger/org-export-preprocessor)
      (remove-hook! 'find-file-hook #'+org-roam-open-buffer-maybe-h))
    ```

    If my `.org` file has a `SETUPFILE` file, then enable `org-hugo-auto-export-mode`.

    ```elisp
    (after! (org ox-hugo)
      :defer t
      (defun benmezger/conditional-hugo-enable ()
        (save-excursion
          (if (cdr (assoc "SETUPFILE" (org-roam--extract-global-props '("SETUPFILE"))))
            (org-hugo-auto-export-mode +1)
            (org-hugo-auto-export-mode -1))))
      (add-hook 'org-mode-hook #'benmezger/conditional-hugo-enable))
    ```

    Enable Roam server for easy visualization

    ```elisp
    (use-package! org-roam-server
      :defer t)
    ```

<!--list-separator-->

-  Delft

    ```elisp
    (after! deft
      :defer t
      :config
      (setq deft-directory org-directory)
      (setq deft-extensions '("org" "md" "txt"))
      (setq deft-default-extension "org")
      (setq deft-recursive t)
      (setq deft-use-filename-as-title nil)
      (setq deft-use-filter-string-for-filename t)
      (setq deft-file-naming-rules '((nospace . "-"))))
    ```

<!--list-separator-->

-  Wakatime

    ```elisp
    (use-package! wakatime-mode
      :init
      (cond ((string-equal system-type "gnu/linux")
        (setq wakatime-cli-path "/usr/bin/wakatime"))
        ((string-equal system-type "darwin")
          (setq wakatime-cli-path "/usr/local/bin/wakatime")))
      :config
      (global-wakatime-mode))
    ```

<!--list-separator-->

-  PySort

    ```elisp
    (use-package! py-isort
      :defer t
      :init
      (add-hook 'before-save-hook 'py-isort-before-save))
    ```

<!--list-separator-->

-  Elfeed

    ```elisp
    (after! elfeed-org
      :defer t
      :init
      (setq rmh-elfeed-org-files (list "~/workspace/org/urls.org")))
    ```

<!--list-separator-->

-  ob-mermaid

    ```elisp
    (after! ob-mermaid
      :defer t
      :init
      (setq ob-mermaid-cli-path "/usr/local/bin/mmdc"))
    ```

<!--list-separator-->

-  Mu4e

    ```elisp
    (after! mu4e
      :defer t
      :config
      (cond ((string-equal system-type "gnu/linux")
              (setq sendmail-program "/usr/bin/msmtp"
                send-mail-function 'smtpmail-send-it
                message-sendmail-f-is-evil t
                message-sendmail-extra-arguments '("--read-envelope-from"))
              message-send-mail-function 'message-send-mail-with-sendmail)
        ((string-equal system-type "darwin")
          (setq sendmail-program "/usr/local/bin/msmtp"
            send-mail-function 'smtpmail-send-it
            message-sendmail-f-is-evil t
            message-sendmail-extra-arguments '("--read-envelope-from")
            message-send-mail-function 'message-send-mail-with-sendmail)))

      (set-email-account! "personal"
        '((mu4e-sent-folder       . "/personal/sent")
           (mu4e-drafts-folder     . "/personal/drafts")
           (mu4e-trash-folder      . "/personal/trash")
           (mu4e-refile-folder     . "/personal/archives")
           (user-mail-address . "me@benmezger.nl")
           (smtpmail-smtp-user     . "me@benmezger.nl")
           (smtpmail-smtp-server     . "smtp.gmail.com")
           (smtpmail-smtp-service . 587)
           (mu4e-compose-signature . "---\nBen Mezger")))

      (set-email-account! "work"
        '((mu4e-sent-folder       . "/work/sent")
           (mu4e-drafts-folder     . "/work/drafts")
           (mu4e-trash-folder      . "/work/trash")
           (mu4e-refile-folder     . "/work/all")
           (smtpmail-smtp-user     . "ben@ckl.io")
           (user-mail-address . "ben@ckl.io")
           (smtpmail-smtp-server     . "smtp.gmail.com")
           (smtpmail-smtp-service . 587)
           (mu4e-compose-signature . "---\nBen Mezger, Backend developer"))))
    ```

<!--list-separator-->

-  org-ref

    ```elisp
    (after! org-ref
      :config
      (setq org-ref-completion-library 'org-ref-ivy-cite)
      (setq org-ref-default-bibliography `,(list (concat org-directory "/bibliography.bib")))
      (setq org-ref-pdf-directory (concat org-directory "/pdfs/"))
      (setq org-ref-bibliography-notes (concat org-directory "/bibnotes.org"))
      (setq reftex-default-bibliography org-ref-default-bibliography))
    ```

<!--list-separator-->

-  Bibtex-completion

    ```elisp
    (after! bibtex-completion
      (setq bibtex-completion-format-citation-functions
        '((org-mode      . bibtex-completion-format-citation-org-link-to-PDF)
           (latex-mode    . bibtex-completion-format-citation-cite)
           (markdown-mode . bibtex-completion-format-citation-pandoc-citeproc)
           (default       . bibtex-completion-format-citation-default))))
    ```

<!--list-separator-->

-  Citeproc-org

    ```elisp
    (use-package! citeproc-org
      :after org
      :config
      (map! :map org-mode-map
            :localleader
            (:prefix ("-" . "bibliography")
             "i" #'org-ref-insert-link
             "r" #'org-ref-insert-ref-link
             "l" #'org-ref-insert-bibliography-link
             "c" #'org-ref-insert-cite-with-completion))

      (citeproc-org-setup))
    ```

<!--list-separator-->

-  Final config.el

    ```elisp
    (setq user-full-name "Ben Mezger"
      user-mail-address "me@benmezger.nl")

    (setq doom-font (font-spec :family "Hack" :size 14))
    (setq doom-theme 'doom-monokai-spectrum)
    (setq display-line-numbers-type t)

    (display-time-mode 1)
    (display-battery-mode 1)
    (toggle-frame-maximized)

    (after! lsp-mode
      :config
      (setq lsp-response-timeout 90000))

    (after! company-lsp
      :config
      (push 'company-lsp company-backends)
      (setq company-lsp-async t)
      (setq company-lsp-cache-candidates t)
      (setq company-lsp-enable-recompletion t))

    (after! company
      :config
      (setq company-selection-wrap-around t)
      (setq company-minimum-prefix-length 1)
      (setq company-idle-delay 0))

    (after! doom-modeline
      :config

      (set-face-attribute 'mode-line nil :family "Hack" :height 125)
      (set-face-attribute 'mode-line-inactive nil :family "Hack" :height 125)

      (setq doom-modeline-buffer-file-name-style 'truncate-upto-project)

      (setq doom-modeline-icon (display-graphic-p))
      (setq doom-modeline-major-mode-icon t)
      (setq doom-modeline-major-mode-color-icon t)

      (setq doom-modeline-buffer-state-icon t)
      (setq doom-modeline-buffer-modification-icon t)

      (setq doom-modeline-enable-word-count t)
      (setq doom-modeline-buffer-encoding t)
      (setq doom-modeline-indent-info t)

      (setq doom-modeline-mu4e nil)
      (setq doom-modeline-irc nil)

      (setq doom-modeline-env-version t)
      (setq doom-modeline-env-load-string "...")

      (setq doom-modeline-continuous-word-count-modes
        '(markdown-mode gfm-mod))

      ;; Don’t compact font caches during GC.
      (setq inhibit-compacting-font-caches t))


    (after! flycheck
      :config
      (setq flycheck-check-syntax-automatically '(save mode-enable)))

    (after! ivy
      :config
      (setq enable-recursive-minibuffers t)

      ;; enable this if you want `swiper' to use it
      (setq search-default-mode #'char-fold-to-regexp)
      (setq ivy-re-builders-alist
        '((swiper . ivy--regex-plus)
           (counsel-rg . ivy--regex-plus)
           (t      . ivy--regex-fuzzy)))

      (setq ivy-bibtex-default-action 'ivy-bibtex-insert-key)

      (defun eh-ivy-return-recentf-index (dir)
        (when (and (boundp 'recentf-list)
                recentf-list)
          (let ((files-list
                  (cl-subseq recentf-list
                    0 (min (- (length recentf-list) 1) 20)))
                 (index 0))
            (while files-list
              (if (string-match-p dir (car files-list))
                (setq files-list nil)
                (setq index (+ index 1))
                (setq files-list (cdr files-list))))
            index)))

      (defun eh-ivy-sort-file-function (x y)
        (let* ((x (concat ivy--directory x))
                (y (concat ivy--directory y))
                (x-mtime (nth 5 (file-attributes x)))
                (y-mtime (nth 5 (file-attributes y))))
          (if (file-directory-p x)
            (if (file-directory-p y)
              (let ((x-recentf-index (eh-ivy-return-recentf-index x))
                     (y-recentf-index (eh-ivy-return-recentf-index y)))
                (if (and x-recentf-index y-recentf-index)
                  ;; Directories is sorted by `recentf-list' index
                  (< x-recentf-index y-recentf-index)
                  (string< x y)))
              t)
            (if (file-directory-p y)
              nil
              ;; Files is sorted by mtime
              (time-less-p y-mtime x-mtime)))))

      (add-to-list 'ivy-sort-functions-alist
        '(read-file-name-internal . eh-ivy-sort-file-function)))

    (after! org
      :config
      (setq org-log-done 'time)
      (setq org-clock-persist 'history)
      (setq org-directory "~/workspace/org")
      (setq org-archive-location "archives/%s_archive::")
      (setq org-agenda-files (list org-directory org-roam-directory))
      (org-clock-persistence-insinuate)
      (setq-default org-catch-invisible-edits 'smart)
      (setq org-log-into-drawer t)
      (setq org-agenda-inhibit-startup t)
      (add-hook! 'org-mode-hook #'turn-on-auto-fill)
      (setq bibtex-completion-bibliography (concat org-directory "/bibliography.bib"))

      (setq org-todo-keywords
        '((sequence "TODO(t!)" "CURRENT(u!)" "WAIT(w@/!)" "NEXT(n!)" "PROJ(o!)" "|")
           (sequence "READ(!)")
           (sequence "|" "DONE(d!)" "CANCELED(c!)"))
        org-todo-keyword-faces
        '(("CURRENT"  . "orange")
           ("TODO" . "systemRedColor")
           ("READ" . "systemOrangeColor")
           ("HOLD"  . "indianRed")
           ("WAIT" . "salmon1")
           ("PROJ" . "systemYellowColor")))

      (setq org-capture-templates
        '(
           ("c" "Code" entry (file "~/workspace/org/code.org")
             (file "~/workspace/org/templates/code-snippet.capture"))
           ("n" "Note" entry (file+olp "~/workspace/org/notes.org" "Inbox")
             "* %?\nEntered on %U\n  %i\n  %a")
           ("t" "Todo" entry (file "~/workspace/org/todos.org")
             "* TODO %?\n %i\n  %a")
           ("r" "Register new book" entry (file+olp "~/workspace/org/notes.org" "Books")
             (file "~/workspace/org/templates/new-book.capture"))
           ("d" "Decision note" entry (file "~/workspace/org/decisions.org")
             (file "~/workspace/org/templates/decision.capture"))
           ("w" "Weekly journal" entry (file+olp+datetree "~/workspace/org/journal/weekly.org" "Weekly notes")
             (file "~/workspace/org/templates/weekly-journal.capture") :tree-type week)))


      (setq ob-async-no-async-languages-alist '("gnuplot" "mermaid")))

    (after! org-roam
      :defer t
      (setq org-roam-directory "~/workspace/org/roam")
      (setq org-roam-index-file (concat org-roam-directory "/" "index.org"))

      (setq org-roam-capture-templates
        '(("d" "default" plain (function org-roam-capture--get-point)
            "%?"
            :file-name "%(format-time-string \"%Y-%m-%d--%H-%M-%SZ--${slug}\" (current-time) t)"
            :head "#+TITLE: ${title}
    #+DATE: %T
    #+FILETAGS: %^G
    #+SETUPFILE: %(concat (file-name-as-directory org-directory) \"hugo.setup\")
    #+HUGO_SLUG: ${slug}
    #+HUGO_TAGS: %^{Hugo tags}

    - tags :: "
            :unnarrowed t)
           ("p" "private" plain (function org-roam-capture--get-point)
             "%?"
             :file-name "private/%(format-time-string \"%Y-%m-%d--%H-%M-%SZ--${slug}\" (current-time) t)"
             :head "#+TITLE: ${title}
    #+DATE: %T
    #+FILETAGS: :personal:%^G
    #+HUGO_SLUG: ${slug}
    "
             :unnarrowed t)))

      (defun custom-org-protocol-focus-advice (orig &rest args)
        (x-focus-frame nil)
        (apply orig args))

      (advice-add 'org-roam-protocol-open-ref :around
        #'custom-org-protocol-focus-advice)
      (advice-add 'org-roam-protocol-open-file :around
        #'custom-org-protocol-focus-advice))

    (after! (org org-roam)
      :defer t
      (defun benmezger/org-roam-export-all ()
        "Re-exports all Org-roam files to Hugo markdown."
        (interactive)
        (dolist (f (org-roam--list-all-files))
          (with-current-buffer (find-file f)
            (when (s-contains? "SETUPFILE" (buffer-string))
              (org-hugo-export-wim-to-md)))))

      (defun benmezger/org-roam--backlinks-list (file)
        (when (org-roam--org-roam-file-p file)
          (mapcar #'car (org-roam-db-query
                          [:select :distinct [from]
                            :from links
                            :where (= to $s1)
                            :and from :not :like $s2] file "%private%"))))

      (defun benmezger/org-export-preprocessor (_backend)
        (when-let ((links (benmezger/org-roam--backlinks-list (buffer-file-name))))
          (insert "\n** Backlinks\n")
          (dolist (link links)
            (insert (format "- [[file:%s][%s]]\n"
                      (file-relative-name link org-roam-directory)
                      (org-roam--get-title-or-slug link))))))

      (add-hook 'org-export-before-processing-hook #'benmezger/org-export-preprocessor)
      (remove-hook! 'find-file-hook #'+org-roam-open-buffer-maybe-h))

    (after! (org ox-hugo)
      :defer t
      (defun benmezger/conditional-hugo-enable ()
        (save-excursion
          (if (cdr (assoc "SETUPFILE" (org-roam--extract-global-props '("SETUPFILE"))))
            (org-hugo-auto-export-mode +1)
            (org-hugo-auto-export-mode -1))))
      (add-hook 'org-mode-hook #'benmezger/conditional-hugo-enable))

    (use-package! org-roam-server
      :defer t)

    (after! deft
      :defer t
      :config
      (setq deft-directory org-directory)
      (setq deft-extensions '("org" "md" "txt"))
      (setq deft-default-extension "org")
      (setq deft-recursive t)
      (setq deft-use-filename-as-title nil)
      (setq deft-use-filter-string-for-filename t)
      (setq deft-file-naming-rules '((nospace . "-"))))

    (use-package! wakatime-mode
      :init
      (cond ((string-equal system-type "gnu/linux")
        (setq wakatime-cli-path "/usr/bin/wakatime"))
        ((string-equal system-type "darwin")
          (setq wakatime-cli-path "/usr/local/bin/wakatime")))
      :config
      (global-wakatime-mode))

    (use-package! py-isort
      :defer t
      :init
      (add-hook 'before-save-hook 'py-isort-before-save))

    (after! ob-mermaid
      :defer t
      :init
      (setq ob-mermaid-cli-path "/usr/local/bin/mmdc"))

    (after! mu4e
      :defer t
      :config
      (cond ((string-equal system-type "gnu/linux")
              (setq sendmail-program "/usr/bin/msmtp"
                send-mail-function 'smtpmail-send-it
                message-sendmail-f-is-evil t
                message-sendmail-extra-arguments '("--read-envelope-from"))
              message-send-mail-function 'message-send-mail-with-sendmail)
        ((string-equal system-type "darwin")
          (setq sendmail-program "/usr/local/bin/msmtp"
            send-mail-function 'smtpmail-send-it
            message-sendmail-f-is-evil t
            message-sendmail-extra-arguments '("--read-envelope-from")
            message-send-mail-function 'message-send-mail-with-sendmail)))

      (set-email-account! "personal"
        '((mu4e-sent-folder       . "/personal/sent")
           (mu4e-drafts-folder     . "/personal/drafts")
           (mu4e-trash-folder      . "/personal/trash")
           (mu4e-refile-folder     . "/personal/archives")
           (user-mail-address . "me@benmezger.nl")
           (smtpmail-smtp-user     . "me@benmezger.nl")
           (smtpmail-smtp-server     . "smtp.gmail.com")
           (smtpmail-smtp-service . 587)
           (mu4e-compose-signature . "---\nBen Mezger")))

      (set-email-account! "work"
        '((mu4e-sent-folder       . "/work/sent")
           (mu4e-drafts-folder     . "/work/drafts")
           (mu4e-trash-folder      . "/work/trash")
           (mu4e-refile-folder     . "/work/all")
           (smtpmail-smtp-user     . "ben@ckl.io")
           (user-mail-address . "ben@ckl.io")
           (smtpmail-smtp-server     . "smtp.gmail.com")
           (smtpmail-smtp-service . 587)
           (mu4e-compose-signature . "---\nBen Mezger, Backend developer"))))

    (after! org-ref
      :config
      (setq org-ref-completion-library 'org-ref-ivy-cite)
      (setq org-ref-default-bibliography `,(list (concat org-directory "/bibliography.bib")))
      (setq org-ref-pdf-directory (concat org-directory "/pdfs/"))
      (setq org-ref-bibliography-notes (concat org-directory "/bibnotes.org"))
      (setq reftex-default-bibliography org-ref-default-bibliography))

    (after! bibtex-completion
      (setq bibtex-completion-format-citation-functions
        '((org-mode      . bibtex-completion-format-citation-org-link-to-PDF)
           (latex-mode    . bibtex-completion-format-citation-cite)
           (markdown-mode . bibtex-completion-format-citation-pandoc-citeproc)
           (default       . bibtex-completion-format-citation-default))))

    (use-package! citeproc-org
      :after org
      :config
      (map! :map org-mode-map
            :localleader
            (:prefix ("-" . "bibliography")
             "i" #'org-ref-insert-link
             "r" #'org-ref-insert-ref-link
             "l" #'org-ref-insert-bibliography-link
             "c" #'org-ref-insert-cite-with-completion))

      (citeproc-org-setup))
    ```


#### Snippets {#snippets}

The following are snippets that are automatically applied on a new file.

<!--list-separator-->

-  Org template

    ```elisp
    # -*- mode: snippet -*-
    # name: Org new note template
    # --

    #+TITLE: ${1:`
    (string-join
     (mapcar #'capitalize
             ;; Replace -,_... with space
             (split-string
              (let (case-fold-search)
                ;; Seperating lower from upper: hello|World
                (replace-regexp-in-string
                 "\\([[:lower:]]\\)\\([[:upper:]]\\)" "\\1 \\2"
                 ;; Separating upper from (upper and lower): HTTP|Server
                 (replace-regexp-in-string "\\([[:upper:]]\\)\\([[:upper:]][0-9[:lower:]]\\)"
                                           "\\1 \\2" (file-name-base buffer-file-name))))
              "[^[:word:]0-9]+"
              )) " " )
    `}
    #+SUBTITLE: $2
    #+AUTHOR: `(user-full-name)`
    #+EMAIL: `user-mail-address`
    #+DATE: <`(format-time-string "%F %a %R")`>

    #+HTML_DOCTYPE: xhtml5
    #+HTML_HTML5_FANCY:

    # Hugo config
    #+DRAFT: false
    #+HUGO_AUTO_SET_LASTMOD: t
    #+HUGO_BASE_DIR: ~/workspace/blog
    #+HUGO_AUTO_SET_LASTMOD: t

    $0
    ```

<!--list-separator-->

-  Python template

    ```python
    # -*- mode: snippet -*-
    # --
    #!/usr/bin/env `(file-name-nondirectory python-shell-interpreter)`

    # Author: `(user-full-name)` <`user-mail-address`>
    # Created at <`(format-time-string "%F %a %R")`>

    $0
    ```


## Scripts {#scripts}

The following scripts is a compilation of all the previous commands, together
with some extra `OS` checks and a custom `echo` with colored output.


### Homebrew install final script {#homebrew-install-final-script}

```shell
#!/usr/bin/env bash
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
. "$DIR/base.sh"
. "$DIR/ansi"

if [[ "$OSTYPE" == "darwin"* ]]; then
	isavailable brew ||
		curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh
	isavailable chezmoi || brew install chezmoi
else
	ansi --yellow "Not a darwin platform. Skipping"
fi
```


### Chezmoi install final script {#chezmoi-install-final-script}

```shell
#!/usr/bin/env bash
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
. "$DIR/ansi"
. "$DIR/base.sh"

if ! [ -x "$(command -v chezmoi)" ]; then
	if [[ "$OSTYPE" == "darwin"* ]]; then
		isavailable brew || curl -sfL https://git.io/chezmoi | sh
		isavailable brew && brew install chezmoi
	elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
		isavailable chezmoi || sudo -v || sudo pacman -S chezmoi --noconfirm
	fi
else
	ansi --yellow "Chezmoi exists, skipping."
fi
```


### Install packages final script {#install-packages-final-script}

```shell
#!/usr/bin/env bash
set -euo pipefail

DIR=$(dirname "$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)")
. "$DIR/scripts/base.sh"
. "$DIR/scripts/ansi"

export HOMEBREW_BUNDLE_FILE="$DIR/Brewfile"
PACMAN_BUNDLE_FILE="$DIR/Pacfile"

if [[ "$OSTYPE" == "darwin"* ]]; then
	ansi --green "Using $HOMEBREW_BUNDLE_FILE bundle file"

	brew bundle

	ansi --green "Installing Mute Me app"
	curl https://github.com/pixel-point/mute-me/releases/download/v2.0.0-rc2/mute-me-v2.0.0-rc2.zip \
		-L -o /tmp/muteme.zip

	unzip -o /tmp/muteme.zip -d /tmp/
	rm -rf "$HOME/Applications/Mute Me.app/"
	mv "/tmp/Mute Me.app" "$HOME/Applications"

elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
	# ask sudo upfront
	sudo -v
	sudo pacman -Syy
	ansi --green "Using $PACMAN_BUNDLE_FILE bundle file"
	sudo pacman -S --noconfirm --needed - <"$PACMAN_BUNDLE_FILE"
fi
```


### Install AUR packages final script {#install-aur-packages-final-script}

```shell
#!/usr/bin/env bash
set -euo pipefail

DIR=$(dirname "$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)")
. "$DIR/scripts/buildcheck.sh"
. "$DIR/scripts/base.sh"
. "$DIR/scripts/ansi"

if [[ "$OSTYPE" != "linux-gnu"* ]]; then
	ansi --yellow "Not a Linux platform. Skipping."
	exit 0
fi

if [ ! -f "/etc/arch-release" ]; then
	ansi --yellow "Not running arch. Skipping."
fi

if ! isavailable paru; then
	ansi --yellow "Paru not available. Installing."
	PARU_PATH=/tmp/paru

	git clone https://aur.archlinux.org/paru.git $PARU_PATH
	(cd $PARU_PATH && makepkg -si)
fi

AUR_BUNDLE_FILE="$DIR/Aurfile"
ansi --green "Using $AUR_BUNDLE_FILE bundle file"
paru -S --nouseask - <"$AUR_BUNDLE_FILE"
```


### Install Git packages final script {#install-git-packages-final-script}

```shell
#!/usr/bin/env bash
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
. "$DIR/base.sh"

ZPLUG_PATH="$HOME/.zplug"
if [ ! -d "$ZPLUG_PATH" ]; then
	git clone https://github.com/zplug/zplug "$ZPLUG_PATH"
fi

TMUX_TPM_PATH="$HOME/.tmux/plugins/tpm"
if [ ! -d "$TMUX_TPM_PATH" ]; then
	mkdir -p "$TMUX_TPM_PATH"
	git clone https://github.com/tmux-plugin/tpm "$TMUX_TPM_PATH"
fi

VIM_PLUG_PATH="$HOME/.vim/autoload"
if [ ! -d "$VIM_PLUG_PATH" ]; then
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

	if ! [ -x "$(command -v nvim)" ]; then
		nvim +PlugInstall +qall --headless
	fi
fi

BASE16_PATH="$HOME/.config/base16-shell"
if [ ! -d "$BASE16_PATH" ]; then
	mkdir -p "$BASE16_PATH"
	git clone https://github.com/chriskempson/base16-shell "$BASE16_PATH"
fi

EMACS_PATH="$HOME/.emacs.d"
if [ ! -d "$EMACS_PATH" ]; then
	mkdir -p "$EMACS_PATH"
	git clone --depth 1 https://github.com/hlissner/doom-emacs "$EMACS_PATH"
	"$EMACS_PATH"/bin/doom -y install
else
	"$EMACS_PATH"/bin/doom -y sync -e
fi
```


### Configure OSX final script {#configure-osx-final-script}

```shell
#!/usr/bin/env bash
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
. "$DIR/base.sh"
. "$DIR/ansi"

if [[ "$OSTYPE" != "darwin"* ]]; then
	ansi --green "Not a darwin platform. Skipping."
	exit 0
fi

# mostly from: https://github.com/mathiasbynens/dotfiles/blob/main/.macos

ansi --green "Always show scrollbars"
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

ansi --green "Save to disk and not in iCloud by default"
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

ansi --green "Quit printer app when jobs are completed"
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

ansi --green "Disable the “Are you sure you want to open this application?” dialog"
defaults write com.apple.LaunchServices LSQuarantine -bool false

ansi --green "Trackpad: enable tap to click for this user and for the login screen"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

ansi --green "Increase sound quality for Bluetooth headphones/headsets"
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

ansi --green "Set a blazingly fast keyboard repeat rate"
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

ansi --green "Require password immediately after sleep or screen saver begins"
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

ansi --green "Save screenshots to the desktop"
defaults write com.apple.screencapture location -string "${HOME}/Desktop"

ansi --green "Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)"
defaults write com.apple.screencapture type -string "png"

ansi --green "Finder: show hidden files by default"
defaults write com.apple.finder AppleShowAllFiles -bool true

ansi --green "Finder: show all filename extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

ansi --green "Avoid creating .DS_Store files on network or USB volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

ansi --green "Set to check daily instead of weekly"
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

ansi --green "Set default clock format"
defaults write com.apple.menuextra.clock DateFormat -string "EEE d MMM h:mm:ss a"

ansi --green "Set Default Finder Location to Home Folder"
defaults write com.apple.finder NewWindowTarget -string "PfLo" &&
	defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"

ansi --green "Killing Finder.."
killall Finder

ansi --green "Killing SystemUIServer"
killall SystemUIServer

if [ "${CI:-0}" = "1" ]; then
	ansi --green "Skipping sudo required commands"
	exit 0
fi

# ask sudo upfront
sudo -v

ansi --green "Build Locate Database"
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist

ansi --green "Enable firewall"
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on

ansi --green "Set Clock Using Network Time"
sudo systemsetup setusingnetworktime on

ansi --green "Killing SystemUIServer"
killall SystemUIServer
```


### Configure Archlinux final script {#configure-archlinux-final-script}

```shell
#!/usr/bin/env bash
set -euo pipefail

DIR=$(dirname "$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)")
. "$DIR/base.sh"
. "$DIR/ansi"

if [[ "$OSTYPE" != "linux-gnu"* ]]; then
	ansi --yellow "Platform is not linux-gnu"
fi

if [ ! -f "/etc/arch-release" ]; then
	ansi --yellow "Not running arch. Skipping."
fi

# ask sudo upfront
sudo -v

ansi --green "Updating pacman.conf.."
sudo sed -i '/Color$/s/^#//g' /etc/pacman.conf
sudo sed -i '/TotalDownload$/s/^#//g' /etc/pacman.conf
sudo sed -i '/CheckSpace$/s/^#//g' /etc/pacman.conf
sudo sed -i '/VerbosePkgLists$/s/^#//g' /etc/pacman.conf

ansi --green "Enable timedatectl and set up timezone"
sudo timedatectl set-ntp true
sudo ln -sf /usr/share/zoneinfo/Ameriaca/Sao_Paulo /etc/localtime
sudo hwclock --systohc

ansi-green "Setup locale"
sudo sed -i '/en_US.UTF-8$/s/^#//g' /etc/pacman.conf
sudo locale-gen
```


### Configure system final script {#configure-system-final-script}

```shell
#!/usr/bin/env bash
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
. "$DIR/base.sh"

if [[ "$OSTYPE" == "darwin"* ]]; then
	source "$DIR/set_osx_defaults.sh"
else
	source "$DIR/set_archlinux_defaults.sh"
fi
```


### SSH permission final script {#ssh-permission-final-script}

```shell
#!/usr/bin/env bash
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
. "$DIR/buildcheck.sh"
. "$DIR/base.sh"
. "$DIR/ansi"

if [[ -d "$HOME/.ssh" ]]; then
	ansi --green "SSH file chmod..."

	chmod 755 "$HOME"/.ssh
	[[ -f "$HOME/.ssh/id_rsa" ]] && chmod 600 "$HOME"/.ssh/id_rsa
	[[ -f "$HOME/.ssh/id_rsa.pub" ]] && chmod 600 "$HOME"/.ssh/id_rsa.pub
fi
```


### GNUPG permission final script {#gnupg-permission-final-script}

```shell
#!/usr/bin/env bash
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
. "$DIR/buildcheck.sh"
. "$DIR/base.sh"
. "$DIR/ansi"

if [[ -d "$HOME/.gnupg" ]]; then
	ansi --green "Changing GnuPG permissions.."

	chown -R $(whoami) ~/.gnupg/
	# Also correct the permissions and access rights on the directory
	chmod 700 ~/.gnupg/*
	chmod 700 ~/.gnupg
fi
```


### Ensure directory final script {#ensure-directory-final-script}

```shell
#!/usr/bin/env bash
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
. "$DIR/base.sh"
. "$DIR/ansi"

ansi --yellow "Ensuring required directories exist.."
mkdir -pv $HOME/mail
mkdir -pv $HOME/mail/.attachments
mkdir -pv $HOME/workspace/opt
mkdir -pv $HOME/workspace/go
```
