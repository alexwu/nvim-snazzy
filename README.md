# nvim-snazzy

> Based on the wonderful [hyper-snazzy](https://github.com/sindresorhus/hyper-snazzy/) and [vim-snazzy](https://github.com/sindresorhus/hyper-snazzy/)

> Used [zephyr-nvim](https://github.com/glepnir/zephyr-nvim) as the basis for porting Snazzy to lua.

Snazzy Neovim theme written in Lua with basic treesitter support!

Will be updated as I find things that annoy me about it, which is currently a lot of things.

## Installation

[lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
return {
	{
		"alexwu/nvim-snazzy",
		dependencies = { "rktjmp/lush.nvim" },
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("snazzy")
		end,
	},
}
```
