# 🌟 Cosmic Latte

A beautiful solarized-inspired Neovim colorscheme with cosmic vibes and retro aesthetics.

## ✨ Features

- **Solarized Foundation**: Built on the beloved solarized color palette
- **Cosmic Accent**: Beautiful coral/salmon accent color (`#ff8e7f`) for highlights
- **Retro Vibes**: Perfect for that nostalgic coding experience
- **Full Support**: LSP, Treesitter, Telescope, and more
- **Light Theme**: Optimized for light backgrounds

## 📦 Installation

### With [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "your-username/cosmic-latte.nvim",
  priority = 1000,
  lazy = false,
  config = function()
    require("cosmic-latte").setup()
  end,
}
```

### With [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "your-username/cosmic-latte.nvim",
  config = function()
    require("cosmic-latte").setup()
  end
}
```

### Manual Installation

1. Clone this repository to your Neovim config directory:
```bash
git clone https://github.com/your-username/cosmic-latte.nvim ~/.config/nvim/cosmic-latte.nvim
```

2. Add to your Neovim config:
```lua
-- For lazy.nvim users
{
  "cosmic-latte.nvim",
  dir = vim.fn.stdpath("config") .. "/cosmic-latte.nvim",
  name = "cosmic-latte",
  priority = 1000,
  lazy = false,
  config = function()
    require("cosmic-latte").setup()
  end,
}
```

## 🎨 Color Palette

Based on the Solarized palette with cosmic enhancements:

- **Base Colors**: Classic solarized light theme foundation
- **Cosmic Accent**: `#ff8e7f` - A warm coral/salmon for special highlights
- **Syntax Colors**: Carefully chosen for readability and aesthetics

## 🔧 Configuration

The theme works out of the box, but you can customize it:

```lua
-- Enable termguicolors for full color support
vim.opt.termguicolors = true

-- Apply the colorscheme
vim.cmd("colorscheme cosmic-latte")
```

## 📸 Screenshots

*Coming soon...*

## 🤝 Contributing

Contributions are welcome! Feel free to:
- Report bugs
- Suggest improvements
- Add support for new plugins
- Improve documentation

## 📄 License

MIT License - Feel free to use, modify, and distribute!

## 🙏 Acknowledgments

- Inspired by the [Solarized](https://ethanschoonover.com/solarized/) color scheme
- Built for the amazing [Neovim](https://neovim.io/) community