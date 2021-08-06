local M = {}
local dark = {
  base0 = "#1B2229",
  base1 = "#1c1f24",
  base2 = "#202328",
  base3 = "#23272e",
  base4 = "#3f444a",
  base5 = "#5B6268",
  base6 = "#73797e",
  base7 = "#9ca0a4",
  base8 = "#b1b1b1",

  red = "#ff5c57",
  green = "#5af78e",
  yellow = "#f3f99d",
  blue = "#57c7ff",
  magenta = "#ff6ac1",
  cyan = "#9aedfe",
  white = "#f1f1f0",
  grey = "#686868",
  black = "#282a36",

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

  fg = "#eff0eb",
  bg = "#282a36",

  selection_background = "#273d57",

  cursor = "#3a3d4d",
  cursorline = "#3a3d4d",
  none = "NONE"
}

local light = {
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
  none = "NONE"
}

function M.terminal_color()
  vim.g.terminal_color_0 = "#282a36";
  vim.g.terminal_color_1 = "#ff5c57";
  vim.g.terminal_color_2 = "#5af78e";
  vim.g.terminal_color_3 = "#f3f99d";
  vim.g.terminal_color_4 = "#57c7ff";
  vim.g.terminal_color_5 = "#ff6ac1";
  vim.g.terminal_color_6 = "#9aedfe";
  vim.g.terminal_color_7 = "#f1f1f0";
  vim.g.terminal_color_8 = "#43454F";
  vim.g.terminal_color_9 = "#ff5c57";
  vim.g.terminal_color_10 = "#5af78e";
  vim.g.terminal_color_11 = "#f3f99d";
  vim.g.terminal_color_12 = "#57c7ff";
  vim.g.terminal_color_13 = "#ff6ac1";
  vim.g.terminal_color_14 = "#9aedfe";
  vim.g.terminal_color_15 = "#eff0eb";
end

function M.highlight(group, color)
  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
  local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
  local sp = color.sp and "guisp=" .. color.sp or ""
  vim.api.nvim_command(
    "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp)
end

function M.load_syntax(theme)
  local snazzy;
  if theme == "dark" then
    snazzy = dark
  else
    snazzy = light
  end

  local syntax = {
    Normal = {fg = snazzy.fg, bg = snazzy.bg},
    Terminal = {fg = snazzy.fg, bg = snazzy.bg},
    SignColumn = {bg = snazzy.ui_11},
    FoldColumn = {fg = snazzy.ui_12, bg = snazzy.ui_4, style = "italic"},
    VertSplit = {fg = snazzy.ui_8, bg = snazzy.ui_11, style = "bold"},
    Folded = {fg = snazzy.ui_12, bg = snazzy.ui_4},
    EndOfBuffer = {fg = snazzy.bg, bg = snazzy.none},
    IncSearch = {fg = snazzy.ui_11, bg = snazzy.yellow, style = snazzy.none},
    Search = {fg = snazzy.ui_11, bg = snazzy.yellow, sp = snazzy.yellow},
    ColorColumn = {fg = snazzy.none, bg = snazzy.ui_9, sp = snazzy.ui_9},
    Conceal = {fg = snazzy.grey, bg = snazzy.none},
    TermCursor = {fg = snazzy.ui_12, bg = snazzy.cursor, sp = snazzy.cursor},
    Cursor = {fg = snazzy.none, bg = snazzy.none, style = "reverse"},
    vCursor = {fg = snazzy.ui_12, bg = snazzy.ui_1, sp = snazzy.ui_1},
    iCursor = {fg = snazzy.none, bg = snazzy.none, style = "reverse"},
    lCursor = {fg = snazzy.none, bg = snazzy.none, style = "reverse"},
    CursorIM = {fg = snazzy.none, bg = snazzy.cursor},
    CursorColumn = {fg = snazzy.ui_3, bg = snazzy.ui_9, sp = snazzy.ui_9},
    CursorLine = {
      fg = snazzy.none,
      bg = snazzy.cursorline,
      sp = snazzy.cursorline
    },
    LineNr = {fg = snazzy.ui_8},
    CursorLineNr = {fg = snazzy.yellow},
    DiffAdd = {fg = snazzy.green, bg = snazzy.ui_11},
    DiffChange = {fg = snazzy.yellow, bg = snazzy.ui_11},
    DiffDelete = {fg = snazzy.red, bg = snazzy.ui_11},
    DiffText = {fg = snazzy.red, bg = snazzy.ui_9, sp = snazzy.ui_9},
    Directory = {fg = snazzy.cyan, bg = snazzy.none, style = "bold"},
    ErrorMsg = {fg = snazzy.red, bg = snazzy.none, style = "bold"},
    WarningMsg = {fg = snazzy.yellow, bg = snazzy.none, style = "bold"},
    ModeMsg = {
      fg = snazzy.ui_0,
      bg = snazzy.ui_12,
      sp = snazzy.ui_12,
      style = "bold"
    },
    MatchParen = {bg = snazzy.none, fg = snazzy.green, style = "bold"},
    Whitespace = {fg = snazzy.base4},
    SpecialKey = {fg = snazzy.ui_6, style = "italic"},
    Pmenu = {fg = snazzy.ui_2, bg = snazzy.ui_9, sp = snazzy.ui_9},
    PmenuSel = {fg = snazzy.green, bg = snazzy.ui_9, sp = snazzy.ui_9},
    PmenuSelBold = {
      fg = snazzy.green,
      bg = snazzy.ui_9,
      sp = snazzy.ui_9,
      style = "bold"
    },
    PmenuSbar = {fg = snazzy.ui_0, bg = snazzy.ui_5, sp = snazzy.ui_5},
    PmenuThumb = {fg = snazzy.none, bg = snazzy.ui_4, sp = snazzy.ui_4},
    WildMenu = {fg = snazzy.none, bg = snazzy.ui_4, sp = snazzy.ui_4},
    Question = {fg = snazzy.yellow},
    TabLineFill = {
      fg = snazzy.ui_12,
      bg = snazzy.ui_9,
      sp = snazzy.ui_9,
      style = "bold"
    },
    TabLineSel = {
      fg = snazzy.ui_2,
      bg = snazzy.ui_11,
      sp = snazzy.ui_11,
      style = "bold"
    },
    StatusLine = {
      fg = snazzy.fg,
      bg = snazzy.ui_9,
      sp = snazzy.ui_9,
      style = snazzy.none
    },
    StatusLineNC = {
      fg = snazzy.ui_4,
      bg = snazzy.ui_9,
      sp = snazzy.ui_9,
      style = snazzy.none
    },
    SpellBad = {
      fg = snazzy.none,
      bg = snazzy.none,
      sp = snazzy.red,
      style = "underline"
    },
    SpellCap = {fg = snazzy.blue, bg = snazzy.none, style = "underline"},
    SpellLocal = {fg = snazzy.cyan, bg = snazzy.none, style = "underline"},
    SpellRare = {fg = snazzy.magenta, bg = snazzy.none, style = "underline"},
    Visual = {
      fg = snazzy.fg,
      bg = snazzy.selection_background,
      sp = snazzy.selection_background
    },
    VisualNOS = {
      fg = snazzy.ui_12,
      bg = snazzy.ui_1,
      sp = snazzy.ui_1,
      style = "underline"
    },
    QuickFixLine = {fg = snazzy.magenta, style = "bold"},
    Debug = {fg = snazzy.yellow},
    MoreMsg = {fg = snazzy.yellow, style = "bold"},
    debugBreakpoint = {fg = snazzy.bg, bg = snazzy.red},

    Boolean = {fg = snazzy.magenta},
    Number = {fg = snazzy.yellow},
    Float = {fg = snazzy.ui_4},
    PreProc = {fg = snazzy.red},
    PreCondit = {fg = snazzy.yellow},
    Include = {fg = snazzy.yellow},
    Define = {fg = snazzy.yellow},
    Conditional = {fg = snazzy.yellow, style = "bold"},
    Repeat = {fg = snazzy.green},
    Keyword = {fg = snazzy.magenta},
    Typedef = {fg = snazzy.ui_7, style = "bold"},
    Exception = {fg = snazzy.red},
    Statement = {fg = snazzy.magenta},
    Error = {fg = snazzy.red},
    StorageClass = {fg = snazzy.blue, style = "bold"},
    Tag = {fg = snazzy.yellow},
    Label = {fg = snazzy.yellow},
    Structure = {fg = snazzy.ui_7, style = "bold"},
    Operator = {fg = snazzy.magenta, style = "bold"},
    Title = {fg = snazzy.yellow, style = "bold"},
    Special = {fg = snazzy.yellow},
    SpecialChar = {fg = snazzy.yellow},
    Type = {fg = snazzy.cyan},
    Function = {fg = snazzy.blue, style = "bold"},
    String = {fg = snazzy.yellow},
    Character = {fg = snazzy.ui_3},
    Constant = {fg = snazzy.green},
    Macro = {fg = snazzy.yellow},
    Identifier = {fg = snazzy.cyan},

    Comment = {fg = snazzy.ui_8, style = "italic"},
    NonText = {fg = snazzy.ui_8, style = "italic"},
    SpecialComment = {fg = snazzy.yellow},
    Todo = {fg = snazzy.yellow, style = "italic"},
    Delimiter = {fg = snazzy.yellow},
    Ignore = {fg = snazzy.grey},
    Underlined = {fg = snazzy.ui_1, sp = snazzy.white, style = "underline"},

    NvimInternalError = {fg = snazzy.red, bg = snazzy.red},
    RedrawDebugRecompose = {fg = snazzy.white, bg = snazzy.red},

    SnapBorder = {fg = snazzy.blue},
    SnapPosition = {fg = snazzy.yellow, style = "bold"},
    SnapSelect = {fg = snazzy.none, bg = snazzy.ui_9, sp = snazzy.ui_9},
    SnapPrompt = {fg = snazzy.magenta},

    CompeDocumentationBorder = {fg = snazzy.blue}
  }
  return syntax
end

function M.load_plugin_syntax(theme)
  local snazzy;
  if theme == "dark" then
    snazzy = dark
  else
    snazzy = light
  end

  local plugin_syntax = {
    TSBoolean = {fg = snazzy.magenta},
    TSConditional = {fg = snazzy.yellow, style = "bold"},
    TSConstMacro = {fg = snazzy.green},
    TSConstructor = {fg = snazzy.white},
    TSDanger = {fg = snazzy.red, style = "bold"},
    TSDefinition = {fg = snazzy.none, bg = snazzy.ui_9, sp = snazzy.ui_9},
    TSDefinitionUsage = {fg = snazzy.none, bg = snazzy.ui_9, sp = snazzy.ui_9},
    TSError = {fg = snazzy.red, style = "bold"},
    TSField = {fg = snazzy.cyan},
    TSFloat = {fg = snazzy.ui_4},
    TSFuncMacro = {fg = snazzy.green},
    TSFunction = {fg = snazzy.blue, style = "bold"},
    TSInclude = {fg = snazzy.magenta},
    TSKeyword = {fg = snazzy.magenta, style = "bold"},
    TSKeywordFunction = {fg = snazzy.magenta, style = "bold"},
    TSMethod = {fg = snazzy.cyan, style = "bold"},
    TSNumber = {fg = snazzy.ui_4},
    TSParameter = {fg = snazzy.white},
    TSProperty = {fg = snazzy.cyan},
    TSPunctBracket = {fg = snazzy.white},
    TSPunctDelimiter = {fg = snazzy.white},
    TSQueryLinterError = {fg = snazzy.red, style = "bold"},
    TSRepeat = {fg = snazzy.green, style = "bold"},
    TSString = {fg = snazzy.yellow},
    TSStringEscape = {fg = snazzy.ui_8, style = "bold"},
    TSSymbol = {fg = snazzy.green},
    TSTag = {fg = snazzy.cyan},
    TSTagDelimiter = {fg = snazzy.magenta},
    TSType = {fg = snazzy.green, style = "bold"},
    TSURI = {fg = snazzy.blue, style = "underline"},
    TSWarning = {fg = snazzy.yellow},

    vimCommentTitle = {fg = snazzy.grey, style = "bold"},
    vimLet = {fg = snazzy.yellow},
    vimVar = {fg = snazzy.cyan},
    vimFunction = {fg = snazzy.magenta, style = "bold"},
    vimIsCommand = {fg = snazzy.fg},
    vimCommand = {fg = snazzy.blue},
    vimNotFunc = {fg = snazzy.grey, style = "bold"},
    vimUserFunc = {fg = snazzy.yellow, style = "bold"},
    vimFuncName = {fg = snazzy.yellow, style = "bold"},

    diffAdded = {fg = snazzy.green},
    diffRemoved = {fg = snazzy.red},
    diffChanged = {fg = snazzy.blue},
    diffOldFile = {fg = snazzy.yellow},
    diffNewFile = {fg = snazzy.yellow},
    diffFile = {fg = snazzy.cyan},
    diffLine = {fg = snazzy.grey},
    diffIndexLine = {fg = snazzy.magenta},

    gitcommitSummary = {fg = snazzy.red},
    gitcommitUntracked = {fg = snazzy.grey},
    gitcommitDiscarded = {fg = snazzy.grey},
    gitcommitSelected = {fg = snazzy.grey},
    gitcommitUnmerged = {fg = snazzy.grey},
    gitcommitOnBranch = {fg = snazzy.grey},
    gitcommitArrow = {fg = snazzy.grey},
    gitcommitFile = {fg = snazzy.green},

    VistaBracket = {fg = snazzy.grey},
    VistaChildrenNr = {fg = snazzy.yellow},
    VistaKind = {fg = snazzy.magenta},
    VistaScope = {fg = snazzy.red},
    VistaScopeKind = {fg = snazzy.blue},
    VistaTag = {fg = snazzy.green, style = "bold"},
    VistaPrefix = {fg = snazzy.grey},
    VistaColon = {fg = snazzy.green},
    VistaIcon = {fg = snazzy.yellow},
    VistaLineNr = {fg = snazzy.fg},

    GitGutterAdd = {fg = snazzy.green},
    GitGutterChange = {fg = snazzy.yellow},
    GitGutterDelete = {fg = snazzy.red},
    GitGutterChangeDelete = {fg = snazzy.red},
    GitSignsAdd = {fg = snazzy.green},
    GitSignsChange = {fg = snazzy.yellow},
    GitSignsDelete = {fg = snazzy.red},
    GitSignsCurrentLineBlame = {
      fg = snazzy.ui_8,
      bg = snazzy.cursorline,
      style = "italic"
    },

    SignifySignAdd = {fg = snazzy.green},
    SignifySignChange = {fg = snazzy.blue},
    SignifySignDelete = {fg = snazzy.red},

    dbui_tables = {fg = snazzy.blue},

    DefxIconsParentDirectory = {fg = snazzy.yellow},
    Defx_filename_directory = {fg = snazzy.blue},
    Defx_filename_root = {fg = snazzy.red},

    DashboardShortCut = {fg = snazzy.magenta},
    DashboardHeader = {fg = snazzy.yellow},
    DashboardCenter = {fg = snazzy.blue},
    DashboardFooter = {fg = snazzy.grey},

    LspDiagnosticsDefaultError = {fg = snazzy.red},
    LspDiagnosticsFloatingError = {fg = snazzy.red},
    LspDiagnosticsDefaultWarning = {fg = snazzy.yellow},
    LspDiagnosticsFloatingWarning = {fg = snazzy.yellow},
    LspDiagnosticsDefaultHint = {fg = snazzy.green},
    LspDiagnosticsFloatingHint = {fg = snazzy.green},
    LspDiagnosticsDefaultInformation = {fg = snazzy.cyan},
    LspDiagnosticsFloatingInformation = {fg = snazzy.cyan},

    LspReferenceRead = {fg = snazzy.none, bg = snazzy.ui_9, sp = snazzy.ui_9},
    LspReferenceText = {fg = snazzy.none, bg = snazzy.ui_9, sp = snazzy.ui_9},
    LspReferenceWrite = {fg = snazzy.none, bg = snazzy.ui_9, sp = snazzy.ui_9},

    LspDiagnosticsSignError = {fg = snazzy.red},
    LspDiagnosticsSignWarning = {fg = snazzy.yellow},
    LspDiagnosticsSignInformation = {fg = snazzy.blue},
    LspDiagnosticsSignHint = {fg = snazzy.cyan},

    LspDiagnosticsVirtualTextError = {fg = snazzy.red},
    LspDiagnosticsVirtualTextWarning = {fg = snazzy.yellow},
    LspDiagnosticsVirtualTextInformation = {fg = snazzy.blue},
    LspDiagnosticsVirtualTextHint = {fg = snazzy.cyan},

    LspDiagnosticsUnderlineError = {
      style = "underline",
      sp = snazzy.red,
      fg = snazzy.red
    },
    LspDiagnosticsUnderlineWarning = {
      style = "underline",
      sp = snazzy.yellow,
      fg = snazzy.yellow
    },
    LspDiagnosticsUnderlineInformation = {
      style = "underline",
      sp = snazzy.blue,
      fg = snazzy.blue
    },
    LspDiagnosticsUnderlineHint = {
      style = "underline",
      sp = snazzy.cyan,
      fg = snazzy.cyan
    },

    LspFloatWinBorder = {fg = snazzy.blue},
    FloatBorder = {fg = snazzy.blue},
    NormalFloat = {fg = snazzy.fg, bg = snazzy.bg},

    CursorWord0 = {bg = snazzy.grey},
    CursorWord1 = {bg = snazzy.green},

    NvimTreeFolderName = {fg = snazzy.blue},
    NvimTreeGitDeleted = {fg = snazzy.red},
    NvimTreeGitDirty = {fg = snazzy.yellow},
    NvimTreeGitNew = {fg = snazzy.green},
    NvimTreeRootFolder = {fg = snazzy.yellow},
    NvimTreeSpecialFile = {fg = snazzy.fg, bg = snazzy.none, style = "NONE"},

    LspSagaBorderTitle = {fg = snazzy.yellow, style = "bold"},
    LspSagaCodeActionContent = {fg = snazzy.green},
    LspSagaCodeActionTitle = {fg = snazzy.yellow},
    LspSagaCodeActionTruncateLine = {fg = snazzy.blue},
    LspSagaDiagnosticBorder = {fg = snazzy.blue},
    LspSagaDiagnosticHeader = {fg = snazzy.yellow, style = "bold"},
    LspSagaDiagnosticTruncateLine = {fg = snazzy.blue},
    LspSagaDocTruncateLine = {fg = snazzy.blue},
    LspSagaFinderSelection = {fg = snazzy.green},
    LspSagaHoverBorder = {fg = snazzy.blue},
    LspSagaLightBulb = {fg = snazzy.yellow},
    LspSagaLspFinderBorder = {fg = snazzy.blue},
    LspSagaSignatureHelpBorder = {fg = snazzy.blue},

    TelescopeBorder = {fg = snazzy.cyan},
    TelescopeMatching = {fg = snazzy.green, style = "bold"},
    TelescopeMultiSelection = {fg = snazzy.red, style = "bold"},
    TelescopeNormal = {},
    TelescopePreviewBorder = {fg = snazzy.blue},
    TelescopePromptBorder = {fg = snazzy.cyan},
    TelescopePromptPrefix = {fg = snazzy.magenta, style = "bold"},
    TelescopeResultsBorder = {fg = snazzy.blue},
    TelescopeSelection = {bg = snazzy.none, style = "bold"},
    TelescopeSelectionCaret = {fg = snazzy.magenta, style = "bold"},

    DevIconC = {fg = snazzy.cyan},
    DevIconCPlusPlus = {fg = snazzy.magenta},
    DevIconGemfile = {fg = snazzy.red},
    DevIconGo = {fg = snazzy.cyan},
    DevIconJs = {fg = snazzy.yellow},
    DevIconJson = {fg = snazzy.yellow},
    DevIconJsx = {fg = snazzy.cyan},
    DevIconLua = {fg = snazzy.blue},
    DevIconRake = {fg = snazzy.red},
    DevIconRakeFile = {fg = snazzy.red},
    DevIconRb = {fg = snazzy.red},
    DevIconTerminal = {fg = snazzy.green},
    DevIconTs = {fg = snazzy.blue},
    DevIconTsx = {fg = snazzy.cyan},
    DevIconVim = {fg = snazzy.green},
    DevIconVimrc = {fg = snazzy.green},
    DevIconGvimrc = {fg = snazzy.green},
    DevIconZsh = {fg = snazzy.green},
    DevIconZshrc = {fg = snazzy.green},

    -- Transparent version, put this behind an option
    Normal = {fg = snazzy.fg, bg = snazzy.none},
    SignColumn = {fg = snazzy.fg, bg = snazzy.none},
    DiffAdd = {fg = snazzy.green, bg = snazzy.none},
    DiffChange = {fg = snazzy.yellow, bg = snazzy.none},
    DiffDelete = {fg = snazzy.red, bg = snazzy.none},

    rainbowcol1 = {fg = snazzy.white},
    rainbowcol2 = {fg = snazzy.cyan},
    rainbowcol3 = {fg = snazzy.blue},
    rainbowcol4 = {fg = snazzy.magenta},
    rainbowcol5 = {fg = snazzy.red},
    rainbowcol6 = {fg = snazzy.yellow},
    rainbowcol7 = {fg = snazzy.green},

    UltestPass = {fg = snazzy.green},
    UltestFail = {fg = snazzy.red},
    UltestRunning = {fg = snazzy.yellow},
    UltestBorder = {fg = snazzy.red},
    UltestInfo = {fg = snazzy.cyan, style = "bold"}
  }

  return plugin_syntax
end

function M.setup(theme)
  vim.api.nvim_command("hi clear")
  if vim.fn.exists("syntax_on") then vim.api.nvim_command("syntax reset") end

  if theme == "dark" then
    vim.opt.background = "dark"
  else
    vim.opt.background = "light"
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "snazzy"
  local syntax = M.load_syntax(theme)
  for group, colors in pairs(syntax) do M.highlight(group, colors) end

  M.terminal_color()

  local plugin_syntax = M.load_plugin_syntax(theme)
  for group, colors in pairs(plugin_syntax) do M.highlight(group, colors) end
end

return M
