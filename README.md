<h1 align="center">"✨ Elegant Hyprland rice, inspired by the Tokyonight color pallete 🌌"</h1>

🎥 Click the banner below to watch the complete desktop showcase.

<p align="center">
  <a href="https://youtu.be/lv8aSjdJ6ZE">
    <img src="./Preview/banner.png" alt="Desktop Showcase" width="1000">
  </a>
</p>

<p align="center">
Disclaimer: This was all done on my old Lenevo yoga slim 7i btw !
</p>

## 📦 Software packages

List of applications and tools I use.

| Component              | Program                                |
|------------------------|----------------------------------------|
| Distro 🐧              | archlinux                              |
| Windows Manager 🪟     | hyprland                               |
| Terminal 🖥️            | kitty, foot                            |
| Shell 🐚               | zsh                                    |
| System info 🖼️         | fastfetch                              |
| File Manager 📁        | thunar, yazi                           |
| Editor 📝              | neovim                                 |
| Browser 🌐             | zen, helium                            |
| Status Bar 📊          | waybar                                 |
| Launcher 🚀            | fuzzel                                 |
| Notifications 🔔       | mako                                   |
| Firewall 🛡️            | ufw                                    |
| Lockscreen 🔒          | hyprlock                               |
| Logout Menu 🚪         | wlogout                                |
| Music Player 🎵        | spotify + spicetify                    |
| Video Player 🎬        | mpv                                    |
| File Sync 📡           | syncthing                              |
| File Sharing 📤        | localsend                              |
| Wallpaper Utility 🌄   | awww(previously swww)                  |
| Screenshot Tool 📸     | hyprshot + satty                       |
| Screen Recording 📹    | gpu-screen-recorder(gsr)               |
| Password Manager 🔑    | keepassxc                              |
| Resource Monitor 📈    | btop                                   |
| Notes 🧠               | obsidian                               |
| Clipboard Manager 📋   | cliphist                               |
| GTK Theme Manager 🎨   | nwg-look                               |
| QT Theme Manager 🎨    | kvantum                                |

## 📸 More Screenshots

<p align="center"> <img src="https://github.com/ssb-ctrl/dotfiles/raw/main/Screenshots/sc-1.png" width="800" /> </p>
<p align="center"> <img src="https://github.com/ssb-ctrl/dotfiles/raw/main/Screenshots/sc-2.png" width="800" /> </p>
<p align="center"> <img src="https://github.com/ssb-ctrl/dotfiles/raw/main/Screenshots/sc-3.png" width="800" /> </p>
<p align="center"> <img src="https://github.com/ssb-ctrl/dotfiles/raw/main/Screenshots/sc-4.png" width="800" /> </p>
<p align="center"> <img src="https://github.com/ssb-ctrl/dotfiles/raw/main/Screenshots/sc-5.png" width="800" /> </p>
<p align="center"> <img src="https://github.com/ssb-ctrl/dotfiles/raw/main/Screenshots/sc-6.png" width="800" /> </p>
<p align="center"> <img src="https://github.com/ssb-ctrl/dotfiles/raw/main/Screenshots/sc-7.png" width="800" /> </p>

## 🛠️ Installation

### 1. Install git and gnu stow

```bash
sudo pacman -S git stow --needed
```

### 2. Clone the repo

```bash
git clone https://github.com/ssb-ctrl/dotfiles.git ~/dotfiles
```

### 3. Stow it

```bash
cd ~/dotfiles
stow ./
```

## 🎨 Extra Tweaks

### Neuwaita icons for fuzzel

This rice uses [Neuwaita](https://github.com/Ashwatthaamaa/Neuwaita) — a neumorphic Adwaita-style icon pack — for app icons in the fuzzel launcher.

```bash
mkdir -p ~/.local/share/icons/Neuwaita
git clone https://github.com/Ashwatthaamaa/Neuwaita.git ~/.local/share/icons/Neuwaita
```
