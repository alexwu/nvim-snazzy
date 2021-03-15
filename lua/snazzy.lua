local snazzy = {
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

  cursor = "#f1f1f0",
  none = "NONE"
}

function snazzy.terminal_color()
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

function snazzy.highlight(group, color)
  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
  local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
  local sp = color.sp and "guisp=" .. color.sp or ""
  vim.api.nvim_command(
    "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp)
end

function snazzy.load_syntax()
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
    Cursor = {fg = snazzy.ui_12, bg = snazzy.ui_0, sp = snazzy.ui_0},
    vCursor = {fg = snazzy.none, bg = snazzy.none, style = "reverse"},
    iCursor = {fg = snazzy.none, bg = snazzy.none, style = "reverse"},
    lCursor = {fg = snazzy.none, bg = snazzy.none, style = "reverse"},
    CursorIM = {fg = snazzy.none, bg = snazzy.none, style = "reverse"},
    CursorColumn = {fg = snazzy.ui_3, bg = snazzy.ui_9, sp = snazzy.ui_9},
    CursorLine = {fg = snazzy.none, bg = snazzy.ui_9, sp = snazzy.ui_9},
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
    MatchParen = {fg = snazzy.yellow, bg = snazzy.ui_4, style = "bold"},
    NonText = {fg = snazzy.ui_6, style = "italic"},
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
    NormalFloat = {fg = snazzy.base8, bg = snazzy.ui_9},
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
    SpellBad = {fg = snazzy.red, bg = snazzy.none, style = "underline"},
    SpellCap = {fg = snazzy.blue, bg = snazzy.none, style = "underline"},
    SpellLocal = {fg = snazzy.cyan, bg = snazzy.none, style = "underline"},
    SpellRare = {fg = snazzy.magenta, bg = snazzy.none, style = "underline"},
    Visual = {fg = snazzy.ui_12, bg = snazzy.ui_1, sp = snazzy.ui_1},
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
    SpecialComment = {fg = snazzy.yellow},
    Todo = {fg = snazzy.yellow, style = "italic"},
    Delimiter = {fg = snazzy.yellow},
    Ignore = {fg = snazzy.grey},
    Underlined = {fg = snazzy.ui_1, sp = snazzy.white, style = "underline"}
  }
  return syntax
end

function snazzy.load_plugin_syntax()
  local plugin_syntax = {
    TSBoolean = {fg = snazzy.magenta},
    TSConstructor = {fg = snazzy.white},
    TSError = {fg = snazzy.red, style = "bold"},
    TSQueryLinterError = {fg = snazzy.red, style = "bold"},
    TSField = {fg = snazzy.cyan},
    TSFunction = {fg = snazzy.green, style = "bold"},
    TSInclude = {fg = snazzy.magenta},
    TSKeyword = {fg = snazzy.magenta, style = "bold"},
    TSKeywordFunction = {fg = snazzy.magenta, style = "bold"},
    TSMethod = {fg = snazzy.cyan, style = "bold"},
    TSParameter = {fg = snazzy.white},
    TSProperty = {fg = snazzy.cyan},
    TSPunctBracket = {fg = snazzy.white},
    TSRepeat = {fg = snazzy.yellow, style = "bold"},
    TSPunctDelimiter = {fg = snazzy.white},
    TSString = {fg = snazzy.yellow},
    TSStringEscape = {fg = snazzy.ui_8, style = "bold"},
    TSTag = {fg = snazzy.cyan},
    TSTagDelimiter = {fg = snazzy.white},
    TSType = {fg = snazzy.blue, style = "bold"},
    TSURI = {fg = snazzy.blue, style = "underline"},
    TSDefinition = {fg = snazzy.none, bg = snazzy.ui_9, sp = snazzy.ui_9},
    TSDefinitionUsage = {fg = snazzy.none, bg = snazzy.ui_9, sp = snazzy.ui_9},

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
    LspDiagnosticsDefaultHint = {fg = snazzy.cyan},
    LspDiagnosticsFloatingHint = {fg = snazzy.cyan},

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

    CursorWord0 = {bg = snazzy.grey},
    CursorWord1 = {bg = snazzy.grey},

    NvimTreeFolderName = {fg = snazzy.blue},
    NvimTreeRootFolder = {fg = snazzy.red},
    NvimTreeSpecialFile = {fg = snazzy.fg, bg = snazzy.none, style = "NONE"},

    LspSagaDiagnosticBorder = {fg = snazzy.blue},
    LspSagaDiagnosticHeader = {fg = snazzy.yellow, style = "bold"},
    LspSagaDiagnosticTruncateLine = {fg = snazzy.blue},
    LspSagaFinderSelection = {fg = snazzy.green},
    LspSagaLspFinderBorder = {fg = snazzy.blue},
    LspSagaHoverBorder = {fg = snazzy.blue},
    LspSagaDocTruncateLine = {fg = snazzy.blue},
    LspSagaCodeActionTruncateLine = {fg = snazzy.blue},
    LspSagaSignatureHelpBorder = {fg = snazzy.blue},
    LspSagaCodeActionTitle = {fg = snazzy.yellow},

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

    DevIconRake = {fg = snazzy.red},
    DevIconRakeFile = {fg = snazzy.red},
    DevIconRb = {fg = snazzy.red},

    -- Transparent version, put this behind an option
    Normal = {fg = snazzy.fg, bg = snazzy.none},
    SignColumn = {fg = snazzy.fg, bg = snazzy.none},
    DiffAdd = {fg = snazzy.green, bg = snazzy.none},
    DiffChange = {fg = snazzy.yellow, bg = snazzy.none},
    DiffDelete = {fg = snazzy.red, bg = snazzy.none}
  }

  return plugin_syntax
end

local async_load_plugin

async_load_plugin = vim.loop.new_async(vim.schedule_wrap(
                                         function()
    snazzy.terminal_color()
    local syntax = snazzy.load_plugin_syntax()
    for group, colors in pairs(syntax) do snazzy.highlight(group, colors) end
    async_load_plugin:close()
  end))

function snazzy.setup()
  vim.api.nvim_command("hi clear")
  if vim.fn.exists("syntax_on") then vim.api.nvim_command("syntax reset") end

  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "snazzy"
  local syntax = snazzy.load_syntax()
  for group, colors in pairs(syntax) do snazzy.highlight(group, colors) end
  async_load_plugin:send()
end

snazzy.setup()

return snazzy
