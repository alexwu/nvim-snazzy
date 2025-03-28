local lush = require("lush")

---@class lush.HSL
---@field h number The hue component (0-360)
---@field s number The saturation component (0-100)
---@field l number The lightness component (0-100)
---@field hsl table Raw HSL values as a table {h, s, l}
---@field hex string The color as a hex string (#RRGGBB)
---@field rgb table The color as an RGB table {r, g, b}
---@field rotate fun(degrees: number): lush.HSL Rotate the hue by given degrees
---@field ro fun(degrees: number): lush.HSL Alias for rotate
---@field saturate fun(percent: number): lush.HSL Relatively increase saturation by percentage
---@field sa fun(percent: number): lush.HSL Alias for saturate
---@field abs_saturate fun(amount: number): lush.HSL Absolutely increase saturation by amount
---@field abs_sa fun(amount: number): lush.HSL Alias for abs_saturate
---@field desaturate fun(percent: number): lush.HSL Relatively decrease saturation by percentage
---@field de fun(percent: number): lush.HSL Alias for desaturate
---@field abs_desaturate fun(amount: number): lush.HSL Absolutely decrease saturation by amount
---@field abs_de fun(amount: number): lush.HSL Alias for abs_desaturate
---@field lighten fun(percent: number): lush.HSL Relatively increase lightness by percentage
---@field li fun(percent: number): lush.HSL Alias for lighten
---@field abs_lighten fun(amount: number): lush.HSL Absolutely increase lightness by amount
---@field abs_li fun(amount: number): lush.HSL Alias for abs_lighten
---@field darken fun(percent: number): lush.HSL Relatively decrease lightness by percentage
---@field da fun(percent: number): lush.HSL Alias for darken
---@field abs_darken fun(amount: number): lush.HSL Absolutely decrease lightness by amount
---@field abs_da fun(amount: number): lush.HSL Alias for abs_darken
---@field mix fun(target: lush.HSL, strength: number): lush.HSL Mix with another color by percentage
---@field readable fun(): lush.HSL Make the color readable on its background (black or white)
---@field hue fun(value: number): lush.HSL Set the hue to a specific value
---@field saturation fun(value: number): lush.HSL Set the saturation to a specific value
---@field lightness fun(value: number): lush.HSL Set the lightness to a specific value

---@type fun(h_or_hex: string | table, s?: number, l?: number): lush.HSL
local hsl = lush.hsl

local M = {}

local function normal_bg()
	if vim.g.neovide then
		return hsl("#282a36")
	end
end

---@class snazzy.Palette
---@field base0 string
---@field base1 string
---@field base2 string
---@field base3 string
---@field base4 string
---@field base5 string
---@field base6 string
---@field base7 string
---@field base8 string
---@field red lush.HSL
---@field orange lush.HSL
---@field yellow lush.HSL
---@field green lush.HSL
---@field blue lush.HSL
---@field purple lush.HSL
---@field black lush.HSL
---@field white lush.HSL
---@field pure_black lush.HSL
---@field pure_white lush.HSL
---@field blend_factor number

---@class Snazzy.Palette
M.dark = {
	blend_factor = 0.22,

	base0 = "#1B2229",
	base1 = "#1c1f24",
	base2 = "#202328",
	base3 = "#23272e",
	base4 = "#3f444a",
	base5 = "#5B6268",
	base6 = "#73797e",
	base7 = "#9ca0a4",
	base8 = "#b1b1b1",

	red = hsl("#ff5c57"),
	orange = hsl("#FF9F43"),
	yellow = hsl("#f3f99d"),
	green = hsl("#5af78e"),
	blue = hsl("#57c7ff"),
	purple = hsl("#A39DF9"),
	magenta = hsl("#ff6ac1"),
	cyan = hsl("#9aedfe"),
	white = hsl("#f1f1f0"),
	pure_white = hsl("#ffffff"),
	grey = hsl("#686868"),
	black = hsl("#282a36"),
	pure_black = hsl("#000000"),

	search = hsl("#434805"),
	incsearch = hsl("#434805"),

	-- Grayscale
	ui_0 = "#F9F9F9",
	ui_1 = "#f9f9ff",
	ui_2 = "#eff0eb",
	ui_3 = "#e2e4e5",
	ui_4 = "#a1a6a8",
	ui_5 = "#848688",
	ui_6 = "#5e6c70",
	ui_7 = "#536991",
	ui_8 = "#606580",
	ui_9 = "#3a3d4d",
	ui_10 = "#313442",
	ui_11 = "#282a36",
	ui_12 = "#192224",

	fg = hsl("#eff0eb"),
	bg = hsl("#282a36"),

	normal_bg = normal_bg(),

	cursorline = hsl("#303340"),
	foldline = hsl("#3a3d4d"),
	selection_background = hsl("#273d57"),
	statusline = {
		bg = hsl("#3a3d4d"),
	},
	-- selection_background = "#3a3d4d",

	-- cursorline = "#3a3d4d",
	-- selection_background = "#3a3d4d",
	-- cursorline = "#313442",
	-- usage = "#313442",
	usage = "#3a3d4d",
	-- cursorline = "#303340",
	current_node = "#303340",

	diff = {
		delete = hsl("#3a0603"),
		change = hsl("#434805"),
		add = hsl("#00331a"),
	},
	none = nil,

	hop = {
		next_key = hsl("#ff007c"),
		next_key1 = hsl("#00dfff"),
		next_key2 = hsl("#2b8db3"),
		unmatched = hsl("#666666"),
	},
}

---@class Snazzy.Palette
M.light = {
	base0 = "#1B2229",
	base1 = "#1c1f24",
	base2 = "#202328",
	base3 = "#23272e",
	base4 = "#3f444a",
	base5 = "#5B6268",
	base6 = "#73797e",
	base7 = "#9ca0a4",
	base8 = "#b1b1b1",

	black = "#565869",
	brightBlack = "#75798F",

	red = "#FF5C57",
	brightRed = "#FFAEAC",

	green = "#2DAE58",
	brightGreen = "#35CF68",

	yellow = "#CF9C00",
	brightYellow = "#F5B900",

	blue = "#09A1ED",
	brightBlue = "#14B1FF",

	magenta = "#F767BB",
	brightMagenta = "#FF94D2",

	cyan = "#13BBB7",
	brightCyan = "#13BBB7",

	white = "#FAFBF9",
	brightWhite = "#FFFFFF",

	bg = "#FAFBFC",
	fg = "#565869",

	-- Grayscale
	ui_0 = "#F9F9F9",
	ui_1 = "#f9f9ff",
	ui_2 = "#eff0eb",
	ui_3 = "#e2e4e5",
	ui_4 = "#a1a6a8",
	ui_5 = "#848688",
	ui_6 = "#5e6c70",
	ui_7 = "#536991",
	ui_8 = "#606580",
	ui_9 = "#3a3d4d",
	ui_11 = "#282a36",
	ui_12 = "#192224",

	selection_background = "#ebf5f0",

	cursor = "#3a3d4d",
	cursorline = "#e2e4e5",
	none = "NONE",
}

return M
