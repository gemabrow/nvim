## Neovim - Meticulously Defined Configuration Files

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This repository consists of the Neovim configuration files I use. My
goal is creating a streamlined Python/Go-centric workflow *while maintaining
simplicity*. **Remembering shortcuts is not my strong suit**. Feel free to
use these as they are, or to repurpose them for your own needs.

Notable inclusions are:
- [ALE](https://github.com/w0rp/ale)
- [Airline](https://github.com/vim-airline/vim-airline)
- [Deoplete](https://github.com/Shougo/deoplete.nvim)
- [Fugitive](https://github.com/tpope/vim-fugitive)
- [fzf](https://github.com/junegunn/fzf.vim)
- [GitGutter](https://github.com/airblade/vim-gitgutter)
- [Gutentags](https://github.com/ludovicchabant/vim-gutentags)
- [NeoSnippet](https://github.com/Shougo/neosnippet.vim)
- [NERDTree](https://github.com/scrooloose/nerdtree)

### Dependencies

Please ensure the following are installed:
- [`neovim`](https://neovim.io/)
- `git` or `curl`
- [`vim-plug`](https://github.com/junegunn/vim-plug)
- [`anaconda`](https://www.anaconda.com/download/) *(recommended)*

### Installation

Neovim follows the XDG Base Directory Specification, so its user configuration
file(s) can be found in `~\.config\nvim`.

If you would like to keep synced to this repo, install using `git`
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

[//]: # (### Usage
**TODO**: Add brief explanations for included plug-ins and note key-mapping
shortcuts.)

### Thanks

Thanks to all of the developers responsible for vim plug-ins everywhere, and to
the developers behind Neovim. Additional gratitude to those listed below
for taking the time to list the benefits of Neovim. In a sea of useful tools,
they highlighted many of those included here.

- [Sebastian Dahlgren, "My neovim setup for Go"](https://hackernoon.com/my-neovim-setup-for-go-7f7b6e805876 )
- [Geoff Greer, "Why Neovim is Better than Vim"](https://geoff.greer.fm/2015/01/15/why-neovim-is-better-than-vim/ )
- [Am Laher, "neovim and go"](https://medium.com/@ambot/neovim-and-go-8f32e6390f71 )
