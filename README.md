# Chromance

An opinionated, stable and sleek Neovim color theme.

<p align="center">
  <img width="500" alt="Example color theme file" src="./docs/images/example.png">
</p>

## Installation

Insall using [folke/lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "gruvw/chromance.nvim",
  priority = 101,
  config = function()
    -- call setup before setting the color scheme
    require("chromance").setup({
      ... -- options
    })
  
    vim.cmd("colorscheme chromance")
  end
},
```

**Note**: You have to call `require("chromance").setup()` before setting your colors scheme to `chromance`.

### Information

- Default **options** (plugin config): [config.lua](./lua/chromance/config.lua)
- List of **supported plugins**: [config.lua](./lua/chromance/groups/plugins)

**Note** - Initially inspired by [loctvl842/monokai-pro.nvim](https://github.com/loctvl842/monokai-pro.nvim) Spectrum variant (project forked at [872f774](https://github.com/loctvl842/monokai-pro.nvim/commit/872f774303f79416000e8049630052f4124d9534), largely deviated).
