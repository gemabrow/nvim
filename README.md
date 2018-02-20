# NVIM

This repository consists of the Neovim configuration files I personally use. My
main goals are improving a Python/Go-centric workflow while maintaining
simplicity. Remembering shortcuts is not my strong suit. Feel free to
use these as they are, or to repurpose them for your own needs.

## Dependencies

Please ensure the following are installed:
- `neovim`
- `git` or `curl`
- [`vim-plug`](https://github.com/junegunn/vim-plug)

## Installation

Neovim follows the XDG Base Directory Specification, so its user configuration
file(s) can be found in `~\.config\nvim`.

If you'd like to keep synced up to this repo, then install using `git`
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

## Usage

TODO: Add brief explanations of inluded plug-ins and notable shortcuts.

## Support

Will be provided, even in the unlikely scenario that it is needed.

## Thanks

Advice from all of the below, and certainly others, for their articles on
the benefits of Neovim, and configuring it to suit their own needs:

- [Sebastian Dahlgren, "My neovim setup for Go"](https://hackernoon.com/my-neovim-setup-for-go-7f7b6e805876 )
- [Geoff Greer, "Why Neovim is Better than Vim"](https://geoff.greer.fm/2015/01/15/why-neovim-is-better-than-vim/ )
- [Am Laher, "neovim and go"](https://medium.com/@ambot/neovim-and-go-8f32e6390f71 )
