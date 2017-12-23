**vimcolors** is a vim plugin featuring all the color schemes showcased on [vimcolors.com](http://vimcolors.com).

For color schemes with duplicate names, the one with this highest number of GitHub stars is selected.

# Installation

**Basic install**

```bash
mkdir -p ~/.vim/bundle
git clone https://github.com/KurtPreston/vimcolors.git ~/.vim/bundle/vimcolors
```

**Install with [vundle](https://github.com/gmarik/vundle)**

```vim
" add to .vimrc
Plugin 'KurtPreston/vimcolors'
:PluginInstall
```

# Selecting color schemes

To change the color scheme of Vim, execute the command:

```vim
colorscheme NAME_OF_COLOR_SCHEME
```

For example, to change the color scheme to **wombat**, press `esc`, then type:

```vim
:colorscheme wombat
```

To set a color scheme as your default, add the command to your `~/.vimrc` file, like:

```vim
colorscheme wombat
```

# Updating the color schemes

Updated color schemes will be regularly pushed to this repo.  You can grab the latest updates by running:

```bash
cd ~/.vim/bundle/vimcolors
git pull origin master
```

If you would like to run the update script manually, you will need a [create a GitHub Personal Access Token](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/).  To run the update script, execute:

```bash
cd ~/.vim/bundle/vimcolors
GITHUB_ACCESS_TOKEN=YOUR_ACCESS_TOKEN ruby ./retrieve_vimcolor_themes.rb
```

# Credits

This project was inspired by the excellent [vim-colorschemes](https://github.com/flazz/vim-colorschemes) project.
