local lush = require("lush")
local hsl = lush.hsl

local M = {}

M.dark = {
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
	grey = hsl("#686868"),
	black = hsl("#282a36"),

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
	ui_11 = "#282a36",
	ui_12 = "#192224",

	fg = hsl("#eff0eb"),
	bg = hsl("#282a36"),

	cursorline = hsl("#303340"),
	foldline = hsl("#3a3d4d"),
	selection_background = hsl("#273d57"),
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
