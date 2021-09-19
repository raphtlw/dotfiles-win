# dotfiles-win 💻

Contains my manually backed-up dotfiles for use in Windows machines. Unfortunately, due to various limitations of Windows, the setup has to be done manually.

If there is a better way of backing up dotfiles on Windows, please let me know 😊

## Setup & Installation

Instructions for setting up a new installation

### Change Windows settings

Tune the settings to your needs

### Installation of programs

- Brave browser
- Google chrome
- Scoop - `iwr -useb get.scoop.sh | iex`
  - extras (bucket)
  - sudo
  - aria2
  - git
  - 7zip (global)
  - okular (global)
  - https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json
  - posh-git
- Visual Studio Code
- Spotify
- IntelliJ
- Android Studio
- Git bash
- Obsidian
- Windows terminal
- Unigram
- Discord
- GDLauncher
- Steam
- Valorant
- CS:GO
- Bitwarden
- Adobe apps
  - Creative Cloud
  - Lightroom Classic
  - Photoshop
  - Camera Raw
  - Premiere Pro
  - Illustrator
- NVIDIA Geforce Experience
- QBittorrent
- Figma
- Notion
- WireGuard
- DroidCam
- Docker Desktop
- PowerToys
- SyncTrayzor
- QuickLook
- OBS Studio

### Setup WSL 2

- Enable WSL 2 and update the Linux kernel ([Source](https://docs.microsoft.com/en-us/windows/wsl/install-win10))

```sh
wsl --install
```

- Install Ubuntu from Microsoft Store

### GPG key

Restore the GPG key on Git Bash and WSL

```sh
gpg --import /tmp/private.key
```

### SSH key

Generate the GitHub SSH key on WSL and copy it to Git Bash
([Source](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent))

```sh
ssh-keygen -t ed25519 -C "your_email@example.com"
```

After generation, add the contents of the public key file to GitHub.

### Setup Git

Copy .gitconfig from this repo to the `%USERPROFILE%` directory.

### Setup PowerShell

Copy WindowsPowershell from this repo to the `%USERPROFILE%\Documents` directory.

### Setup Windows Terminal

Copy `WindowsTerminal\settings.json` from this repo to `%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json`.

### Install Fonts

Open the explorer from within WSL at `~/.local/share/fonts` and select all the fonts, right click and install.
