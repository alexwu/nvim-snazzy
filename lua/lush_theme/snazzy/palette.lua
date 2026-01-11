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
---@field primary table Primary colors
---@field syntax table Syntax highlighting colors
---@field ui table UI element colors
---@field states table State indicators
---@field diff table Diff colors
---@field special table Special purpose colors
---@field hop table Hop.nvim colors
---@field blend_factor number Default blend factor for mixing colors

-- Create the dark theme palette
local dark = {}

-- Global settings
dark.settings = {
	blend_factor = 22,
	normal_bg = normal_bg(),
	none = nil,
}

-- Define base colors
dark.core = {
	white = hsl("#f1f1f0"),
	black = hsl("#282a36"),
	red = hsl("#ff5c57"),
	green = hsl("#5af78e"),
	yellow = hsl("#f3f99d"),
	blue = hsl("#57c7ff"),
	magenta = hsl("#ff6ac1"),
	cyan = hsl("#9aedfe"),
	orange = hsl("#FF8227"), -- More saturated, better contrast with yellow
	purple = hsl("#A39DF9"),
}

dark.legacy = {
	orange = hsl("#FF9F43"),
}

dark.alt = {
	orange = hsl("#FF7842"), -- Slightly more reddish-orange, stands out nicely
}

-- Absolute colors
dark.absolute = {
	black = hsl("#000000"),
	white = hsl("#ffffff"),
}

-- Define UI grayscale palette
dark.gray = {
	brightest = hsl("#F9F9F9"),
	brighter = hsl("#f9f9ff"),
	bright = hsl("#eff0eb"),
	light = hsl("#e2e4e5"),
	medium_light = hsl("#a1a6a8"),
	medium = hsl("#848688"),
	medium_dark = hsl("#606580"),
	dark = hsl("#3a3d4d"),
	darker = hsl("#313442"),
	darkest = hsl("#1B2229"),
}

-- Define UI-specific colors derived from our base colors
dark.ui = {
	bg = dark.core.black,
	fg = dark.gray.bright,
	cursorline = dark.core.black.lighten(5), -- Could be dark.core.black.lighten(5)
	selection = hsl("#273d57"),
	-- selection = dark.core.blue.darken(40), -- Could be dark.core.blue.darken(40)
	-- selection = dark.core.blue.mix(dark.absolute.black, dark.settings.blend_factor), -- Could be dark.core.blue.darken(40)
	foldline = dark.gray.dark,
	statusline_bg = dark.gray.dark,

	-- Create variations of colors for different UI states
	subtle_text = dark.gray.medium_dark,
	comments = dark.gray.medium_dark,
	line_numbers = dark.gray.medium_dark.lighten(5),
	hints = dark.core.cyan.desaturate(20),
	info = dark.core.blue.desaturate(10),
	warning = dark.core.orange.saturate(10),
	error = dark.core.red,

	-- Derived background colors for semantic states
	success_bg = dark.core.green.darken(40),
	warning_bg = dark.core.yellow.darken(40),
	error_bg = dark.core.red.darken(40),
	info_bg = dark.core.blue.darken(40),

	-- Create a set of accent colors
	accent1 = dark.core.magenta,
	accent2 = dark.core.cyan,
	accent3 = dark.core.purple,
	accent4 = dark.core.yellow,
}

-- Specific colors for diff mode
dark.diff = {
	add = hsl("#00331a"), -- Could be dark.ui.success_bg
	change = hsl("#434805"), -- Could be dark.ui.warning_bg
	delete = hsl("#3a0603"), -- Could be dark.ui.error_bg
	text = dark.ui.fg,
}

-- Colors for hop.nvim plugin
dark.hop = {
	primary = hsl("#ff007c"),
	secondary = hsl("#00dfff"),
	tertiary = hsl("#2b8db3"),
	dim = hsl("#666666"),
}

-- Create a muted version of every core color for subtle UI elements
dark.muted = {}
for name, color in pairs(dark.core) do
	dark.muted[name] = color.desaturate(30).darken(10)
end

-- Base colors (for backward compatibility)
dark.base0 = "#1B2229"
dark.base1 = "#1c1f24"
dark.base2 = "#202328"
dark.base3 = "#23272e"
dark.base4 = "#3f444a"
dark.base5 = "#5B6268"
dark.base6 = "#73797e"
dark.base7 = "#9ca0a4"
dark.base8 = "#b1b1b1"

-- For backward compatibility, add direct keys
dark.red = dark.core.red
dark.orange = dark.core.orange
dark.yellow = dark.core.yellow
dark.green = dark.core.green
dark.blue = dark.core.blue
dark.purple = dark.core.purple
dark.magenta = dark.core.magenta
dark.cyan = dark.core.cyan
dark.white = dark.core.white
dark.black = dark.core.black
dark.grey = hsl("#686868")
dark.pure_white = dark.absolute.white
dark.pure_black = dark.absolute.black

dark.bg = dark.ui.bg
dark.fg = dark.ui.fg
dark.selection_background = dark.ui.selection
dark.cursorline = dark.ui.cursorline
dark.foldline = dark.ui.foldline
dark.statusline = {
	bg = dark.ui.statusline_bg,
}

dark.usage = "#3a3d4d"
dark.current_node = "#303340"
dark.search = dark.diff.change
dark.incsearch = dark.diff.change

dark.blend_factor = dark.settings.blend_factor
dark.normal_bg = dark.settings.normal_bg
dark.none = dark.settings.none

-- Define UI scale (for backward compatibility)
dark.ui_0 = "#F9F9F9"
dark.ui_1 = "#f9f9ff"
dark.ui_2 = "#eff0eb"
dark.ui_3 = "#e2e4e5"
dark.ui_4 = "#a1a6a8"
dark.ui_5 = "#848688"
dark.ui_6 = "#5e6c70"
dark.ui_7 = "#536991"
dark.ui_8 = hsl("#606580")
dark.ui_9 = "#3a3d4d"
dark.ui_10 = "#313442"
dark.ui_11 = "#282a36"
dark.ui_12 = "#192224"

-- Example of creating new colors by mixing
dark.orange_red = dark.core.orange.mix(dark.core.red, 50)
dark.yellow_green = dark.core.yellow.mix(dark.core.green, 30)
dark.info_subtle = dark.ui.info.desaturate(20).darken(10)
dark.primary_button = dark.core.blue.saturate(10).lighten(5)
dark.primary_button_hover = dark.primary_button.lighten(10)

M.dark = dark

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
	ui_8 = hsl("#606580"),
	ui_9 = "#3a3d4d",
	ui_11 = "#282a36",
	ui_12 = "#192224",

	selection_background = "#ebf5f0",

	cursor = "#3a3d4d",
	cursorline = "#e2e4e5",
	none = "NONE",
}

return M
