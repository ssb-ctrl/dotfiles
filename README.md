<h1 align="center">"✨ Elegant Hyprland rice, inspired by the Tokyo Nocturne color pallete 🌌"</h1>

<p align="center">
  <a href="https://github.com/ssb-ctrl/dotfiles/blob/main/Preview/banner.png">
    <img src="https://github.com/ssb-ctrl/dotfiles/raw/main/Preview/banner.png" alt="Banner">
  </a>
</p>

<p align="center">
  <b>Disclaimer: This was all done on my old Lenevo yoga slim 7i btw !</b>
</p>

## 📦 Programs

List of programs and tools I use.

| Component              | Program                                |
|------------------------|----------------------------------------|
| Distro 🐧              | Arch linux                             |
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
| Screen Recording 📹    | gpu screen recorder(gsr)               |
| Password Manager 🔑    | keepassxc                              |
| Resource Monitor 📈    | btop                                   |
| Notes 🧠               | obsidian                               |
| Clipboard Manager 📋   | cliphist                               |
| GTK Theme Manager 🎨   | nwg-look                               |
| QT Theme Manager 🎨    | kvantum                                |

## 🎸 Preview

<p align="center">
  <video src="https://github.com/ssb-ctrl/dotfiles/raw/main/Preview/preview.mp4" controls muted width="800">
    Your browser doesn't support inline video —
    <a href="https://github.com/ssb-ctrl/dotfiles/raw/main/Preview/preview.mp4">watch it here</a> instead.
  </video>
</p>

## 📸 More Screenshots

<p align="center"> <img src="https://github.com/ssb-ctrl/dotfiles/raw/main/Screenshots/sc-1.png" width="800" /> </p>
<p align="center"> <img src="https://github.com/ssb-ctrl/dotfiles/raw/main/Screenshots/sc-2.png" width="800" /> </p>
<p align="center"> <img src="https://github.com/ssb-ctrl/dotfiles/raw/main/Screenshots/sc-3.png" width="800" /> </p>
<p align="center"> <img src="https://github.com/ssb-ctrl/dotfiles/raw/main/Screenshots/sc-4.png" width="800" /> </p>
<p align="center"> <img src="https://github.com/ssb-ctrl/dotfiles/raw/main/Screenshots/sc-5.png" width="800" /> </p>
<p align="center"> <img src="https://github.com/ssb-ctrl/dotfiles/raw/main/Screenshots/sc-6.png" width="800" /> </p>

## 🛠️ Installation

### 1. Install git and stow

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
