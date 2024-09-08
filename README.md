# ⚠️ Maintenance Mode ⚠️

This repository is currently in low-maintenance mode, as I have moved to NixOS and am no longer using Arch for 99% of the time. However, this repository will still be updated as breaking changes to package configurations are made. You can find my NixOS configuration [here](https://github.com/42willow/flake).

----

<!-- HEADERS -->
<p align="center">
  <img width="25%" src="https://github.com/42Willow/dotfiles/blob/main/assets/42willow.gif?raw=true" />
</p>
<p align="center">
  <b> ~ Willow's configuration files ~ </b>
</p>

<!-- INFORMATION -->
## Information

https://github.com/42Willow/dotfiles/assets/70784752/c05e9d59-6c2d-466e-ab67-82bc5a7e0394

- 🪟 **Window Manager** • [Hyprland](https://github.com/hyprwm/Hyprland)
- 🐚 **Shell** • [Bash](https://www.gnu.org/software/bash/) with [Starship](https://github.com/starship/starship)
- \>_ **Terminal** • [Kitty](https://github.com/kovidgoyal/kitty)
- 🎉 **Bar & Widgets** • [Waybar](https://github.com/Alexays/Waybar)
- 🍃 **Notification Daemon** • [Dunst](https://github.com/dunst-project/dunst)
- 🚀 **Launcher** • [Tofi](https://github.com/philj56/tofi)
- 🗃️ **File Manager** • [Nautilus](https://gitlab.gnome.org/GNOME/nautilus)
- 🎨 **Colour Palette** • [Catppuccin Macchiato Pink](https://github.com/catppuccin)

## Wallpapers

Click [here](https://github.com/42Willow/wallpapers) to view my wallpaper dump! (includes a README)

## Setup

```bash
# Clone the repository
git clone https://github.com/42Willow/dotfiles.git $HOME/.dotfiles

# (Optional) Clone the wallpaper repository
git clone https://github.com/42Willow/wallpapers.git $HOME/.wallpapers

# (Optional) Install all the packages
yay -S - < $HOME/.dotfiles/assets/packages.txt
```

Then you can use `stow` to symlink the dotfiles. View my "How to use `stow`" quickstart [here](https://github.com/42Willow/dotfiles/tree/main/assets/stow.md)

## Miscellaneous

- **Catppuccin Theme <kbd>Suggested</kbd>**
  > Install the [Catppuccin](https://github.com/catppuccin/catppuccin) theme everywhere!

- **Font <kbd>Suggested</kbd>**
  > Monaspace (specifically `MonaspiceNe Nerd Font Regular`) can be installed from [here](https://github.com/ryanoasis/nerd-fonts/releases/latest) or the [Arch Repository](https://archlinux.org/packages/extra/any/otf-monaspace-nerd/)

## Acknowledgements

- **GitHub Repos** • [My GitHub Star List](https://github.com/stars/42Willow/lists/ricing)
- **Dotfiles Manager** • [Stow](https://www.gnu.org/software/stow/)
