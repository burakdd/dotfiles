# Dotfiles and MacOS setup guide

This is my dotfiles repository and also contains steps I need to do when installing from scratch.

## Clean MacOS Installation

Most of my stuff backed up and stored in remote anyway so this option should be default

- RTFM [offical apple guide](https://support.apple.com/en-us/HT204904)
- restart machine with `CMD + R` to start recovery installation
- wipe out disk entirely
    - select `APFS` as file system
    - leave name and others as default
- install macOS from scratch

## Automated Stuff

Each folder contains installation and preferences for each software.`install.sh` will install all necesssary steps
* xcode and developer tools install.
* brew file with all software listed in `Brewfile`.
* copy and symlink `dotfiles` to their places.

## Manual Stuff

#### add sshkey for github
- [creating new ssh key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)
- [adding ssh key to github](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)
- test if setup working with `ssh -T git@github.com -i ~/.ssh/github_rsa`

#### install developer tools along with Xcode
- `xcode-select --install` this includes stuff like gcc and developer toolchain needed by most program/apps
- install Xcode but it is optional (takes ages on slow connection)
- `sudo xcodebuild -license` even though you don't need xcode you need to agree!

## MacOS System Settings

Most of the defaults are already in the `macos/defaults.sh`.

#### Dock
- auto hide to bottom
- make size smaller
- add `Applications` folder to shortcuts
- add `Home` folder to shortcuts

#### Keyboard & Mouse
- `System Settings -> Keyboard -> Key Repeat & Delay` All the way to the right
- Show emoji bar in menu bar (I am terrible at those)
- `System Settings -> Trackpad` Enable almost all touch features (eg. tap to click)

#### Spaces
- Enable spaces (press F3 and add as much as space 4 optimum)
- Disable `Automatic rearranging of Space`
- Change default shortcut for switch
    - default is `Ctrl - Right/Left Arrow`
    - `System Settings -> Keyboard -> Shortcut -> Mission Control -> Switch to Desktop`
    - make it `Ctrl - 1/2/3/4`

#### Screen Saver & Sleep
- Desktop & Screen Saver -> Hot corners Enable hot corners for quick lock
- Left down corner seems like a habit for me, use it for screen saver
- Right up corner for Desktop view

#### Security
- Turn off guest account
- Turn on firewall

## IntelliJ Settings & Plugins

Go to `Preferences -> Plugins`
- Protobuf
- Key Promoter X
- Lomboks
- Markdown Support
- Docker Integration

> try to use IntelliJ sync server or plugin for settings etc.
