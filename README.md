 [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
## NVIM

This repository consists of the Neovim configuration files I personally use. My
goal is creating a streamlined Python/Go-centric workflow *while maintaining
simplicity*. **Remembering shortcuts is not my strong suit**. Feel free to
use these as they are, or to repurpose them for your own needs.

### Dependencies

Please ensure the following are installed:
- `neovim`
- `git` or `curl`
- [`vim-plug`](https://github.com/junegunn/vim-plug)

### Installation

Neovim follows the XDG Base Directory Specification, so its user configuration
file(s) can be found in `~\.config\nvim`.

If you'd like to keep synced to this repo, then install using `git`
```
git clone https://github.com/gemabrow/nvim.git ~/.config/nvim
```

Otherwise, `curl` should suit your needs
```
curl -sS https://raw.githubusercontent.com/gemabrow/nvim/master/init.vim > ~/.config/nvim/init.vim
curl -sS https://raw.githubusercontent.com/gemabrow/nvim/master/plug-ins.vim > ~/.config/nvim/plug-ins.vim
curl -sS https://raw.githubusercontent.com/gemabrow/nvim/master/plug-settings.vim > ~/.config/nvim/plug-settings.vim
```

Afterwards, fire up Neovim and type in `:PlugInstall`. That's it!

### Usage

TODO: Add brief explanations of included plug-ins and notable shortcuts.

### Support

Will be provided, even in the unlikely scenario that it is needed.

### Thanks

Thanks to all of the developers responsible for vim plug-ins everywhere, and to
the developers behind Neovim. Additional gratitude to those listed below
for taking the time to list the benefits of Neovim, and for highlighting
especially useful tools in a sea of useful tools:

- [Sebastian Dahlgren, "My neovim setup for Go"](https://hackernoon.com/my-neovim-setup-for-go-7f7b6e805876 )
- [Geoff Greer, "Why Neovim is Better than Vim"](https://geoff.greer.fm/2015/01/15/why-neovim-is-better-than-vim/ )
- [Am Laher, "neovim and go"](https://medium.com/@ambot/neovim-and-go-8f32e6390f71 )
