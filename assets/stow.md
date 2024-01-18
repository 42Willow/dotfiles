# Stow Quickstart

[`stow`](https://www.gnu.org/software/stow/manual/stow.html) is used to manage dotfiles (by use of symlinks). To setup, I would recommend transferring all your dotfiles to your own personal Git repository using GNU Stow and copying my dotfiles manually as you wish. When creating a new file in your dotfiles repository, make sure to stow it to the relevant directory!

## Example

*To stow your `dunst` configuration*

```bash
# Copy dunst template if needed
# cp /etc/dunst/dunstrc ~/.config/dunst/dunstrc

# Move your dunst config to your dotfiles directory
mv $HOME/.config/dunst $HOME/.dotfiles

# Create a directory for dunst in your config directory
mkdir $HOME/.config/dunst

# Assuming ~/.dotfiles is your dotfiles directory
stow dunst -d $HOME/.dotfiles/ -t $HOME/.config/dunst 

# To check it was successful
ls -l ~/.config/dunst
```

## Understanding `stow`

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
