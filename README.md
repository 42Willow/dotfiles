<!-- HEADERS -->
<p align="center">
  <img width="25%" src="https://github.com/42Willow/dotfiles/blob/main/assets/42willow.gif?raw=true" />
</p>
<p align="center">
  <b> ~ Willow's configuration files ~ </b>
</p>

<!-- INFORMATION -->
## Information

<p align="center">
  <img src="https://github.com/42Willow/dotfiles/blob/main/assets/screenshot.png?raw=true" />
</p>

- 🪟 **Window Manager** • [Hyprland](https://github.com/hyprwm/Hyprland)
- 🐚 **Shell** • [Bash](https://www.gnu.org/software/bash/) with [Starship](https://github.com/starship/starship)
- \>_ **Terminal** • [Kitty](https://github.com/kovidgoyal/kitty)
- 🎉 **Bar & Widgets** • [Eww](https://github.com/elkowar/eww)
- 🍃 **Notification Daemon** • [Dunst](https://github.com/dunst-project/dunst)
- 🚀 **Launcher** • [Rofi](https://github.com/davatorium/rofi)
- 🗃️ **File Manager** • [Nautilus](https://gitlab.gnome.org/GNOME/nautilus)
- 🎨 **Colour Palette** • [Catppuccin Macchiato Pink](https://github.com/catppuccin)

## Wallpapers

Click [here](https://github.com/42Willow/dotfiles/tree/main/hypr/wallpapers) to view my wallpaper dump! (includes a README)

## Setup (`stow`)

[`stow`](https://www.gnu.org/software/stow/manual/stow.html) is used to manage dotfiles (by use of symlinks). To setup, I would recommend transferring all your dotfiles to your own personal Git repository using GNU Stow and copying my dotfiles manually as you wish.

### How to use `stow`

An example:

```bash
# To stow your Dunst configuration

# First time config
# cp /etc/dunst/dunstrc ~/.config/dunst/dunstrc

mv $HOME/.config/dunst $HOME/.dotfiles

mkdir $HOME/.config/dunst

# Assuming ~/.dotfiles is your dotfiles directory
stow dunst -d $HOME/.dotfiles/ -t $HOME/.config/dunst 

# To check it was successful
ls -l ~/.config/dunst
```

### Understanding `stow`

**Useful Tutorial** • [Manage Your Dotfiles Like a Superhero](https://www.jakewiesler.com/blog/managing-dotfiles)

> `stow` has a few key concepts that, when understood, should make this entire process a breeze. These concepts can be found in the Terminology documentation:
>  
> - **A package** is a folder containing related dotfiles.
> - **A stow directory** is a folder containing one or more packages.
> - **A target directory** is the location in which a package's contents will be symlinked.
>  
> What this will look like in practice is:

```txt
target-directory
├── stow-directory
│   ├── package-1
│   │   └── .dotfile-1
│   ├── package-2
│   │   └── .dotfile-2
│       └── .dotfile-3
```

## Miscellaneous

- **Elkowar's Wacky Widgets**
  > 1. If you are **not** using a monitor, you may want to remove the monitor ddcutil slider from the bar.
  > 2. If you are **not** using bluetooth, you may want to remove the bluetooth widget.

- **Catppuccin Theme <kbd>Suggested</kbd>**
  > Install the [Catppuccin](https://github.com/catppuccin/catppuccin) theme everywhere!

- **Icon Theme <kbd>Suggested</kbd>**
  > You can install [this](https://github.com/Frostbitten-jello/Skeuowaita) icon theme that suits the GTK theme.

- **Font <kbd>Suggested</kbd>**
  > Monaspace (specifically `MonaspiceNe NFM`) can be installed from [here](https://github.com/ryanoasis/nerd-fonts/releases/latest)

## Acknowledgements

- **GitHub Repos** • [My GitHub Star List](https://github.com/stars/42Willow/lists/ricing)
- **Dotfiles Manager** • [Stow](https://www.gnu.org/software/stow/)
