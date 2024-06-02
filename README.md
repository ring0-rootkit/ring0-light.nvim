# ring0-light.nvim

## Installation

### Lazy (recommended)

```lua
{ "ring0-rootkit/ring0-light.nvim" }
```

### Packer

```lua
use "ring0-rootkit/ring0-light.nvim"
```

### Plug

```vim
Plug 'ring0-rootkit/ring0-light.nvim'
```

Then, somewhere in your `init.lua`, set the colorscheme

```lua
vim.cmd.colorscheme("ring0-light")
```

## Configuration

### Defaults

```lua
{
  bold = true,
  invert = {
    signs = false,
    tabline = false,
    visual = false,
  },
  italic = {
    strings = true,
    comments = true,
    operators = false,
    folds = true,
  },
  undercurl = true,
  underline = true,
}
```

### With updated preferences

Change configuration options by calling `setup()`
prior to loading the colorscheme. Your preferences
will be merged with the defaults.

For example, with [Lazy](https://github.com/folke/lazy.nvim.git)...

```lua
{
  "ring0-rootkit/ring0-light.nvim",
  opts = {
    bold = false,
    italic = {
      strings = false,
    },
  },
}
```

## Credits

These repositories were great knowledge sources and their
inspiration helped immensely with the development of this plugin.

[gruber-darker-vim]: https://github.com/drsooch/gruber-darker-vim
