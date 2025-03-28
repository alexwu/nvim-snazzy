---@diagnostic disable: undefined-global
--# selene: allow(undefined_variable)
-- Run :Lushify
local lush = require("lush")
local hsl = lush.hsl
local hsluv = lush.hsluv
local snazzy = require("lush_theme.snazzy.palette").dark
local theme = lush(function(injected_functions)
	---@type function
	local sym = injected_functions.sym
	return                                                                                                         {
		Boolean                                                                                                      { fg = snazzy.magenta }, -- Boolean        xxx guifg=#ff6ac1
		Character                                                                                                    { fg = "#e2e4e5" }, -- Character      xxx guifg=#e2e4e5
		ColorColumn                                                                                                  { sp = snazzy.statusline.bg, bg = "#3a3d4d" }, -- ColorColumn    xxx guibg=#3a3d4d guisp=#3a3d4d
		Comment                                                                                                      { gui = "italic", fg = "#606580" }, -- Comment        xxx cterm=italic gui=italic guifg=#606580
		Conceal                                                                                                      { fg = "#686868" }, -- Conceal        xxx guifg=#686868
		Conditional                                                                                                  { gui = "bold", fg = snazzy.yellow }, -- Conditional    xxx cterm=bold gui=bold guifg=#f3f99d
		Constant                                                                                                     { fg = snazzy.green }, -- Constant       xxx guifg=#5af78e
		Debug                                                                                                        { fg = snazzy.yellow }, -- Debug          xxx guifg=#f3f99d
		Define                                                                                                       { fg = snazzy.yellow }, -- Define         xxx guifg=#f3f99d
		Identifier                                                                                                   { fg = snazzy.cyan }, -- Identifier     xxx guifg=#9aedfe
		IncSearch                                                                                                    { bg = snazzy.search, fg = snazzy.fg }, -- IncSearch      xxx guibg=#434805
		Macro                                                                                                        { fg = snazzy.yellow }, -- Macro          xxx guifg=#f3f99d
		NonText                                                                                                      { gui = "italic", fg = "#606580" }, -- NonText        xxx cterm=italic gui=italic guifg=#606580
		Normal                                                                                                       {
			fg = snazzy.fg,
			bg = snazzy.normal_bg,
		}, -- Normal         xxx guifg=#eff0eb guibg=#282a36
		NormalFloat                                                                                                  { fg = "#eff0eb", bg = snazzy.normal_bg }, -- NormalFloat    xxx guifg=#eff0eb guibg=#282a36
		Operator                                                                                                     { gui = "bold", fg = snazzy.magenta }, -- Operator       xxx cterm=bold gui=bold guifg=#ff6ac1
		Pmenu                                                                                                        { sp = snazzy.statusline.bg, bg = "#3a3d4d", fg = "#eff0eb" }, -- Pmenu          xxx guifg=#eff0eb guibg=#3a3d4d guisp=#3a3d4d
		PmenuSbar                                                                                                    { sp = "#848688", bg = "#848688", fg = "#f9f9f9" }, -- PmenuSbar      xxx guifg=#f9f9f9 guibg=#848688 guisp=#848688
		PmenuSel                                                                                                     { sp = snazzy.statusline.bg, bg = "#3a3d4d", fg = snazzy.green }, -- PmenuSel       xxx guifg=#5af78e guibg=#3a3d4d guisp=#3a3d4d
		PmenuSelBold                                                                                                 { sp = snazzy.statusline.bg, fg = snazzy.green, bg = "#3a3d4d", gui = "bold" }, -- PmenuSelBold   xxx cterm=bold gui=bold guifg=#5af78e guibg=#3a3d4d guisp=#3a3d4d
		PmenuThumb                                                                                                   { sp = "#a1a6a8", bg = "#a1a6a8" }, -- PmenuThumb     xxx guibg=#a1a6a8 guisp=#a1a6a8
		PreCondit                                                                                                    { fg = snazzy.yellow }, -- PreCondit      xxx guifg=#f3f99d
		PreProc                                                                                                      { fg = snazzy.red }, -- PreProc        xxx guifg=#ff5c57
		Search                                                                                                       { bg = snazzy.search, fg = snazzy.fg }, -- IncSearch      xxx guibg=#434805
		Special                                                                                                      { fg = snazzy.yellow }, -- Special        xxx guifg=#f3f99d
		SpecialChar                                                                                                  { fg = snazzy.yellow }, -- SpecialChar    xxx guifg=#f3f99d
		SpecialComment                                                                                               { fg = snazzy.yellow }, -- SpecialComment xxx guifg=#f3f99d
		SpecialKey                                                                                                   { gui = "italic", fg = "#5e6c70" }, -- SpecialKey     xxx cterm=italic gui=italic guifg=#5e6c70
		Statement                                                                                                    { fg = snazzy.magenta }, -- Statement      xxx guifg=#ff6ac1
		StatusLine                                                                                                   { sp = snazzy.statusline.bg, bg = "#3a3d4d", fg = "#eff0eb" }, -- StatusLine     xxx guifg=#eff0eb guibg=#3a3d4d guisp=#3a3d4d
		StatusLineNC                                                                                                 { sp = snazzy.statusline.bg, bg = "#3a3d4d", fg = "#a1a6a8" }, -- StatusLineNC   xxx guifg=#a1a6a8 guibg=#3a3d4d guisp=#3a3d4d
		StorageClass                                                                                                 { gui = "bold", fg = snazzy.blue }, -- StorageClass   xxx cterm=bold gui=bold guifg=#57c7ff
		String                                                                                                       { fg = snazzy.green }, -- String         xxx guifg=#f3f99d
		Structure                                                                                                    { gui = "bold", fg = "#536991" }, -- Structure      xxx cterm=bold gui=bold guifg=#536991
		Substitute                                                                                                   { bg = snazzy.yellow.mix(snazzy.bg, 50), fg = snazzy.bg }, -- Substitute     xxx links to Search
		TermCursor                                                                                                   { fg = "#192224" }, -- TermCursor     xxx guifg=#192224
		Terminal                                                                                                     { fg = "#eff0eb" }, -- Terminal       xxx guifg=#eff0eb guibg=#282a36
		Title                                                                                                        { gui = "bold", fg = snazzy.yellow }, -- Title          xxx cterm=bold gui=bold guifg=#f3f99d
		Todo                                                                                                         { gui = "italic", fg = snazzy.yellow }, -- Todo           xxx cterm=italic gui=italic guifg=#f3f99d
		Type                                                                                                         { fg = snazzy.cyan }, -- Type           xxx guifg=#9aedfe
		Typedef                                                                                                      { gui = "bold", fg = "#536991" }, -- Typedef        xxx cterm=bold gui=bold guifg=#536991
		Underlined                                                                                                   { sp = "#f1f1f0", gui = "underline", fg = "#f9f9ff" }, -- Underlined     xxx cterm=underline gui=underline guifg=#f9f9ff guisp=#f1f1f0
		VertSplit                                                                                                    { bg = "#282a36", gui = "bold", fg = "#606580" }, -- VertSplit      xxx cterm=bold gui=bold guifg=#606580 guibg=#282a36
		Visual                                                                                                       { sp = "#273d57", bg = "#273d57" }, -- Visual         xxx guibg=#273d57 guisp=#273d57
		VisualNOS                                                                                                    { sp = "#273d57", bg = "#273d57" }, -- VisualNOS      xxx guibg=#273d57 guisp=#273d57
		WarningMsg                                                                                                   { gui = "bold", fg = snazzy.orange }, -- WarningMsg     xxx cterm=bold gui=bold guifg=#ff9f43
		Whitespace                                                                                                   { fg = "#3f444a" }, -- Whitespace     xxx guifg=#3f444a
		WildMenu                                                                                                     { sp = "#a1a6a8", bg = "#a1a6a8" }, -- WildMenu       xxx guibg=#a1a6a8 guisp=#a1a6a8
		WinBar                                                                                                       { gui = "bold" }, -- WinBar         xxx cterm=bold gui=bold
		WinBarNC                                                                                                     { WinBar }, -- WinBarNC       xxx links to WinBar
		WinSeparator                                                                                                 { VertSplit }, -- WinSeparator   xxx links to VertSplit

		-- Treesitter highlights
		TSCurrentNode                                                                                                { bg = "#303340" }, -- TSCurrentNode  xxx guibg=#303340
		TSCurrentScope                                                                                               { bg = snazzy.statusline.bg }, -- TSCurrentScope xxx guibg=#3a3d4d
		TSParameterReference                                                                                         { fg = snazzy.yellow }, -- TSParameterReference xxx guifg=#f3f99d
		TSQueryLinterError                                                                                           { gui = "bold", fg = snazzy.red }, -- TSQueryLinterError xxx cterm=bold gui=bold guifg=#ff5c57

		sym("@none")                                                                                                 {}, -- TSNone         xxx cterm= gui=

		sym("@annotation")                                                                                           { gui = "italic", fg = snazzy.blue }, -- TSAnnotation   xxx cterm=italic gui=italic guifg=#57c7ff
		sym("@attribute")                                                                                            { gui = "italic", fg = snazzy.blue }, -- TSAttribute    xxx cterm=italic gui=italic guifg=#57c7ff
		sym("@boolean")                                                                                              { gui = "italic", fg = snazzy.purple }, -- TSBoolean      xxx cterm=italic gui=italic guifg=#a39df9
		sym("@character")                                                                                            { fg = snazzy.yellow }, -- TSCharacter    xxx guifg=#f3f99d
		sym("@character.special")                                                                                    { SpecialChar }, -- TSCharacterSpecial xxx links to SpecialChar
		sym("@comment")                                                                                              { gui = "italic", fg = "#606580" }, -- TSComment      xxx cterm=italic gui=italic guifg=#606580
		sym("@comment.danger")                                                                                       { gui = "bold", fg = snazzy.orange }, -- TSDanger       xxx cterm=bold gui=bold guifg=#ff9f43
		sym("@comment.note")                                                                                         { SpecialComment }, -- TSNote         xxx links to SpecialComment
		sym("@comment.todo")                                                                                         { fg = snazzy.cyan }, -- TSTodo         xxx guifg=#9aedfe
		sym("@comment.warning")                                                                                      { fg = snazzy.orange }, -- TSWarning      xxx guifg=#ff9f43
		sym("@constant")                                                                                             { gui = "bold", fg = snazzy.yellow }, -- TSConstant     xxx cterm=italic gui=italic guifg=#f3f99d
		sym("@constant.builtin")                                                                                     { gui = "italic", fg = snazzy.magenta }, -- TSConstBuiltin xxx cterm=italic gui=italic guifg=#ff6ac1
		sym("@constant.macro")                                                                                       { gui = "italic", fg = snazzy.orange }, -- TSConstMacro   xxx cterm=italic gui=italic guifg=#ff9f43
		sym("@constructor")                                                                                          { fg = snazzy.blue }, -- TSConstructor  xxx guifg=#57c7ff
		sym("@definition")                                                                                           { sp = snazzy.statusline.bg, bg = "#3a3d4d" }, -- TSDefinition   xxx guibg=#3a3d4d guisp=#3a3d4d
		sym("@definition.usage")                                                                                     { sp = snazzy.statusline.bg, bg = "#3a3d4d" }, -- TSDefinitionUsage xxx guibg=#3a3d4d guisp=#3a3d4d
		sym("@diff.delta")                                                                                           { fg = snazzy.yellow, bg = snazzy.diff.change }, -- TSWarning      xxx guifg=#ff9f43
		sym("@diff.minus")                                                                                           { fg = snazzy.red, bg = snazzy.diff.delete }, -- TSWarning      xxx guifg=#ff9f43
		sym("@diff.plus")                                                                                            { fg = snazzy.green, bg = snazzy.diff.add }, -- TSWarning      xxx guifg=#ff9f43
		sym("@error")                                                                                                { gui = "bold", fg = snazzy.red }, -- TSError        xxx cterm=bold gui=bold guifg=#ff5c57
		sym("@function")                                                                                             { gui = "bold", fg = snazzy.blue }, -- TSFunction     xxx cterm=bold gui=bold guifg=#57c7ff
		sym("@function.builtin")                                                                                     { gui = "bold", fg = snazzy.yellow }, -- TSFuncBuiltin  xxx cterm=bold gui=bold guifg=#57c7ff
		sym("@function.call")                                                                                        { gui = "bold", fg = snazzy.blue }, -- TSFunctionCall xxx cterm=bold gui=bold guifg=#57c7ff
		sym("@function.macro")                                                                                       { gui = "bold", fg = snazzy.blue }, -- TSFuncMacro    xxx cterm=bold gui=bold guifg=#57c7ff
		sym("@function.method")                                                                                      { gui = "bold", fg = snazzy.blue }, -- TSMethod       xxx cterm=bold gui=bold guifg=#57c7ff
		sym("@function.method.call")                                                                                 { gui = "bold", fg = snazzy.blue }, -- TSMethodCall   xxx cterm=bold gui=bold guifg=#57c7ff
		sym("@include")                                                                                              { fg = snazzy.magenta }, -- TSInclude      xxx guifg=#ff6ac1
		sym("@keyword")                                                                                              { gui = "bold", fg = snazzy.magenta }, -- TSKeyword      xxx cterm=bold gui=bold guifg=#ff6ac1
		sym("@keyword.conditional")                                                                                  { gui = "bold", fg = snazzy.yellow }, -- TSConditional  xxx cterm=bold gui=bold guifg=#f3f99d
		sym("@keyword.coroutine")                                                                                    { gui = "bold", fg = snazzy.magenta }, -- TSKeywordReturn xxx cterm=bold gui=bold guifg=#ff6ac1
		sym("@keyword.debug")                                                                                        { Debug }, -- TSDebug        xxx links to Debug
		sym("@keyword.directive")                                                                                    { PreProc }, -- TSPreProc      xxx links to PreProc
		sym("@keyword.directive.define")                                                                             { Define }, -- TSDefine       xxx links to Define
		sym("@keyword.exception")                                                                                    { fg = snazzy.red }, -- TSException    xxx guifg=#ff5c57
		sym("@keyword.function")                                                                                     { gui = "bold", fg = snazzy.magenta }, -- TSKeywordFunction xxx cterm=bold gui=bold guifg=#ff6ac1
		sym("@keyword.import")                                                                                       { gui = "bold", fg = snazzy.magenta }, -- TSKeyword      xxx cterm=bold gui=bold guifg=#ff6ac1
		sym("@keyword.operator")                                                                                     { gui = "bold", fg = snazzy.magenta }, -- TSKeywordOperator xxx cterm=bold gui=bold guifg=#ff6ac1
		sym("@keyword.repeat")                                                                                       { gui = "bold", fg = snazzy.yellow }, -- TSRepeat       xxx cterm=bold gui=bold guifg=#f3f99d
		sym("@keyword.return")                                                                                       { gui = "bold", fg = snazzy.magenta }, -- TSKeywordReturn xxx cterm=bold gui=bold guifg=#ff6ac1
		sym("@keyword.storage")                                                                                      { fg = snazzy.magenta }, -- TSStorageClass xxx guifg=#ff6ac1
		sym("@label")                                                                                                { fg = snazzy.green }, -- TSLabel        xxx guifg=#5af78e
		sym("@markup.emphasis")                                                                                      { gui = "italic" }, -- TSEmphasis     xxx cterm=italic gui=italic
		sym("@markup.environment")                                                                                   { Macro }, -- TSEnvironment  xxx links to Macro
		sym("@markup.environment.name")                                                                              { Type }, -- TSEnvironmentName xxx links to Type
		sym("@markup.heading")                                                                                       { Title }, -- TSTitle        xxx links to Title
		sym("@markup.link")                                                                                          { Constant }, -- TSTextReference xxx links to Constant
		sym("@markup.link.label")                                                                                    { SpecialChar }, -- TSStringSpecial xxx links to SpecialChar
		sym("@markup.link.uri")                                                                                      { gui = "underline", fg = snazzy.blue }, -- TSURI          xxx cterm=underline gui=underline guifg=#57c7ff
		sym("@markup.list")                                                                                          { fg = snazzy.yellow }, -- TSPunctSpecial xxx guifg=#f3f99d
		sym("@markup.math")                                                                                          { Special }, -- TSMath         xxx links to Special
		sym("@markup.raw")                                                                                           { sym("@none") }, -- TSText         xxx links to TSNone
		sym("@markup.strike")                                                                                        { gui = "strikethrough" }, -- TSStrike       xxx cterm=strikethrough gui=strikethrough
		sym("@markup.strong")                                                                                        { gui = "bold" }, -- TSStrong       xxx cterm=bold gui=bold
		sym("@markup.underline")                                                                                     { gui = "underline" }, -- TSUnderline    xxx cterm=underline gui=underline
		sym("@module")                                                                                               { gui = "bold", fg = snazzy.purple }, -- TSNamespace    xxx cterm=italic gui=italic guifg=#a39df9
		sym("@number")                                                                                               { fg = snazzy.green }, -- TSNumber       xxx guifg=#5af78e
		sym("@number.float")                                                                                         { fg = "#a1a6a8" }, -- TSFloat        xxx guifg=#a1a6a8
		sym("@operator")                                                                                             { fg = snazzy.magenta }, -- TSOperator     xxx guifg=#ff6ac1
		sym("@property")                                                                                             { Identifier }, -- TSProperty     xxx links to Identifier
		sym("@punctuation.bracket")                                                                                  { fg = "#f1f1f0" }, -- TSPunctBracket xxx guifg=#f1f1f0
		sym("@punctuation.delimeter")                                                                                { fg = "#f1f1f0" }, -- TSPunctDelimiter xxx guifg=#f1f1f0
		sym("@string")                                                                                               { fg = snazzy.green }, -- TSString       xxx guifg=#5af78e
		sym("@string.escape")                                                                                        { gui = "bold", fg = snazzy.yellow }, -- TSStringEscape xxx cterm=bold gui=bold guifg=#f3f99d
		sym("@string.regexp")                                                                                        { String }, -- TSStringRegex  xxx links to String
		sym("@string.special.symbol")                                                                                { fg = snazzy.green }, -- TSSymbol       xxx guifg=#5af78e
		sym("@string.special.url")                                                                                   { gui = "underline", fg = snazzy.blue }, -- TSURI          xxx cterm=underline gui=underline guifg=#57c7ff
		sym("@structure")                                                                                            { gui = "italic", fg = snazzy.orange }, -- TSStructure    xxx cterm=italic gui=italic guifg=#ff9f43
		sym("@tag")                                                                                                  { fg = snazzy.cyan }, -- TSTag          xxx guifg=#9aedfe
		sym("@tag.attribute")                                                                                        { fg = snazzy.orange }, -- TSTagAttribute xxx guifg=#f3f99d
		sym("@tag.delimiter")                                                                                        { fg = snazzy.magenta }, -- TSTagDelimiter xxx guifg=#ff6ac1
		sym("@type")                                                                                                 { fg = snazzy.purple }, -- TSType         xxx guifg=#a39df9
		sym("@type.builtin")                                                                                         { fg = snazzy.purple }, -- TSTypeBuiltin  xxx guifg=#a39df9
		sym("@type.definition")                                                                                      { Typedef }, -- TSTypeDefinition xxx links to Typedef
		sym("@type.qualifier")                                                                                       { Type }, -- TSTypeQualifier xxx links to Type
		sym("@variable")                                                                                             { fg = "#eff0eb" }, -- TSVariable     xxx guifg=#eff0eb
		sym("@variable.builtin")                                                                                     { gui = "italic", fg = snazzy.orange }, -- TSVariableBuiltin xxx cterm=italic gui=italic guifg=#ff9f43
		sym("@variable.member")                                                                                      { fg = snazzy.cyan }, -- TSField        xxx guifg=#9aedfe
		sym("@variable.parameter")                                                                                   { fg = snazzy.yellow }, -- TSParameter    xxx guifg=#f3f99d

		-- LSP highlights
		sym("@lsp.type.class")                                                                                       { Structure }, -- @lsp.type.class xxx links to Structure
		sym("@lsp.type.comment")                                                                                     { Comment }, -- @lsp.type.comment xxx links to Comment
		sym("@lsp.type.decorator")                                                                                   { sym("@function") }, -- @lsp.type.decorator xxx links to Function
		sym("@lsp.type.enum")                                                                                        { Structure }, -- @lsp.type.enum xxx links to Structure
		sym("@lsp.type.enumMember")                                                                                  { Constant }, -- @lsp.type.enumMember xxx links to Constant
		sym("@lsp.type.function")                                                                                    { sym("@function") }, -- @lsp.type.function xxx links to Function
		sym("@lsp.type.interface")                                                                                   { Structure }, -- @lsp.type.interface xxx links to Structure
		sym("@lsp.type.macro")                                                                                       { Macro }, -- @lsp.type.macro xxx links to Macro
		sym("@lsp.type.method")                                                                                      { sym("@function.method") }, -- @lsp.type.method xxx links to Function
		sym("@lsp.type.namespace")                                                                                   { sym("@module") }, -- @lsp.type.namespace xxx links to Structure
		sym("@lsp.type.parameter")                                                                                   { sym("@variable.parameter") }, -- @lsp.type.parameter xxx links to Identifier
		sym("@lsp.type.property")                                                                                    { sym("@property") }, -- @lsp.type.property xxx links to Identifier
		sym("@lsp.type.struct")                                                                                      { Structure }, -- @lsp.type.struct xxx links to Structure
		sym("@lsp.type.type")                                                                                        { sym("@type") }, -- @lsp.type.type xxx links to Type
		sym("@lsp.type.typeParameter")                                                                               { Typedef }, -- @lsp.type.typeParameter xxx links to Typedef
		sym("@lsp.type.variable")                                                                                    { sym("@variable") }, -- @lsp.type.variable xxx links to Identifier

		sym("@lsp.mod.global.lua")                                                                                   { fg = snazzy.yellow, gui = "bold" },
		sym("@lsp.typemod.function.defaultLibrary.lua")                                                              { fg = snazzy.yellow, gui = "bold" },

		DiagnosticDefaultError                                                                                       { fg = snazzy.red }, -- DiagnosticDefaultError xxx guifg=#ff5c57
		DiagnosticDefaultHint                                                                                        { fg = snazzy.green }, -- DiagnosticDefaultHint xxx guifg=#5af78e
		DiagnosticDefaultInfo                                                                                        { fg = snazzy.cyan }, -- DiagnosticDefaultInfo xxx guifg=#9aedfe
		DiagnosticDefaultWarn                                                                                        { fg = snazzy.orange }, -- DiagnosticDefaultWarn xxx guifg=#ff9f43
		DiagnosticError                                                                                              { fg = snazzy.red }, -- DiagnosticError xxx ctermfg=1 guifg=Red
		DiagnosticFloatingError                                                                                      { fg = snazzy.red }, -- DiagnosticFloatingError xxx guifg=#ff5c57
		DiagnosticFloatingHint                                                                                       { fg = snazzy.green }, -- DiagnosticFloatingHint xxx guifg=#5af78e
		DiagnosticFloatingInfo                                                                                       { fg = snazzy.cyan }, -- DiagnosticFloatingInfo xxx guifg=#9aedfe
		DiagnosticFloatingWarn                                                                                       { fg = snazzy.orange }, -- DiagnosticFloatingWarn xxx guifg=#ff9f43
		DiagnosticHint                                                                                               { fg = "lightgrey" }, -- DiagnosticHint xxx ctermfg=7 guifg=LightGrey
		DiagnosticInfo                                                                                               { fg = "lightblue" }, -- DiagnosticInfo xxx ctermfg=4 guifg=LightBlue
		DiagnosticSignError                                                                                          { fg = snazzy.red }, -- DiagnosticSignError xxx guifg=#ff5c57
		DiagnosticSignHint                                                                                           { fg = snazzy.cyan }, -- DiagnosticSignHint xxx guifg=#9aedfe
		DiagnosticSignInfo                                                                                           { fg = snazzy.blue }, -- DiagnosticSignInfo xxx guifg=#57c7ff
		DiagnosticSignWarn                                                                                           { fg = snazzy.orange }, -- DiagnosticSignWarn xxx guifg=#ff9f43
		DiagnosticUnderlineError                                                                                     { sp = snazzy.red, gui = "underdouble", fg = "#ff5c57" }, -- DiagnosticUnderlineError xxx cterm=underdouble gui=underdouble guifg=#ff5c57 guisp=#ff5c57
		DiagnosticUnderlineHint                                                                                      { sp = snazzy.cyan, gui = "underdouble" }, -- DiagnosticUnderlineHint xxx cterm=underdouble gui=underdouble guisp=#9aedfe
		DiagnosticUnderlineInfo                                                                                      { sp = snazzy.blue, gui = "underdouble" }, -- DiagnosticUnderlineInfo xxx cterm=underdouble gui=underdouble guisp=#57c7ff
		DiagnosticUnderlineWarn                                                                                      { sp = snazzy.orange, gui = "underdouble" }, -- DiagnosticUnderlineWarn xxx cterm=underdouble gui=underdouble guisp=#ff9f43
		DiagnosticVirtualTextError                                                                                   { fg = snazzy.red }, -- DiagnosticVirtualTextError xxx guifg=#ff5c57
		DiagnosticVirtualTextHint                                                                                    { fg = snazzy.cyan }, -- DiagnosticVirtualTextHint xxx guifg=#9aedfe
		DiagnosticVirtualTextInfo                                                                                    { fg = snazzy.blue }, -- DiagnosticVirtualTextInfo xxx guifg=#57c7ff
		DiagnosticVirtualTextWarn                                                                                    { fg = snazzy.orange }, -- DiagnosticVirtualTextWarn xxx guifg=#ff9f43
		DiagnosticWarn                                                                                               { fg = snazzy.orange }, -- DiagnosticWarn xxx ctermfg=3 guifg=Orange

		NvimInternalError                                                                                            { bg = snazzy.red, fg = "#ff5c57" }, -- NvimInternalError xxx guifg=#ff5c57 guibg=#ff5c57

		CopilotSuggestion                                                                                            { bg = "#303340", fg = snazzy.blue }, -- CopilotSuggestion xxx guifg=#57c7ff guibg=#303340
		Cursor                                                                                                       { gui = "reverse" }, -- Cursor         xxx cterm=reverse gui=reverse
		CursorColumn                                                                                                 { sp = snazzy.statusline.bg, bg = "#3a3d4d", fg = "#e2e4e5" }, -- CursorColumn   xxx guifg=#e2e4e5 guibg=#3a3d4d guisp=#3a3d4d
		CursorLine                                                                                                   { sp = snazzy.cursorline, bg = snazzy.cursorline }, -- CursorLine     xxx guibg=#303340 guisp=#303340
		CursorLineFold                                                                                               { bg = "#303340", gui = "italic", fg = snazzy.blue }, -- CursorLineFold xxx cterm=italic gui=italic guifg=#57c7ff guibg=#303340
		CursorLineNr                                                                                                 { bg = "#303340", fg = snazzy.yellow }, -- CursorLineNr   xxx guifg=#f3f99d guibg=#303340
		CursorLineSign                                                                                               { bg = "#303340" }, -- CursorLineSign xxx guibg=#303340
		CursorWord0                                                                                                  { bg = "#686868" }, -- CursorWord0    xxx guibg=#686868
		CursorWord1                                                                                                  { bg = snazzy.green }, -- CursorWord1    xxx guibg=#5af78e
		DashboardCenter                                                                                              { fg = snazzy.blue }, -- DashboardCenter xxx guifg=#57c7ff
		DashboardFooter                                                                                              { fg = "#686868" }, -- DashboardFooter xxx guifg=#686868
		DashboardHeader                                                                                              { fg = snazzy.yellow }, -- DashboardHeader xxx guifg=#f3f99d
		DashboardShortCut                                                                                            { fg = snazzy.magenta }, -- DashboardShortCut xxx guifg=#ff6ac1
		diffRemoved                                                                                                  { fg = snazzy.red }, -- diffRemoved    xxx guifg=#ff5c57
		diffAdded                                                                                                    { fg = snazzy.green }, -- diffAdded      xxx guifg=#5af78e
		diffChanged                                                                                                  { fg = snazzy.blue }, -- diffChanged    xxx guifg=#57c7ff
		diffFile                                                                                                     { fg = snazzy.cyan }, -- diffFile       xxx guifg=#9aedfe
		diffIndexLine                                                                                                { fg = snazzy.magenta }, -- diffIndexLine  xxx guifg=#ff6ac1
		diffLine                                                                                                     { fg = "#686868" }, -- diffLine       xxx guifg=#686868
		diffNewFile                                                                                                  { fg = snazzy.yellow }, -- diffNewFile    xxx guifg=#f3f99d
		diffOldFile                                                                                                  { fg = snazzy.yellow }, -- diffOldFile    xxx guifg=#f3f99d
		DefxIconsParentDirectory                                                                                     { fg = snazzy.yellow }, -- DefxIconsParentDirectory xxx guifg=#f3f99d
		Defx_filename_directory                                                                                      { fg = snazzy.blue }, -- Defx_filename_directory xxx guifg=#57c7ff
		Defx_filename_root                                                                                           { fg = snazzy.red }, -- Defx_filename_root xxx guifg=#ff5c57
		Delimiter                                                                                                    { fg = snazzy.yellow }, -- Delimiter      xxx guifg=#f3f99d
		DevIconAi                                                                                                    { fg = "#cbcb41" }, -- DevIconAi      xxx ctermfg=185 guifg=#cbcb41
		DevIconAwk                                                                                                   { fg = "#4d5a5e" }, -- DevIconAwk     xxx ctermfg=59 guifg=#4d5a5e
		DevIconBabelrc                                                                                               { fg = "#cbcb41" }, -- DevIconBabelrc xxx ctermfg=185 guifg=#cbcb41
		DevIconBash                                                                                                  { fg = "#89e051" }, -- DevIconBash    xxx ctermfg=113 guifg=#89e051
		DevIconBashProfile                                                                                           { fg = "#89e051" }, -- DevIconBashProfile xxx ctermfg=113 guifg=#89e051
		DevIconBashrc                                                                                                { fg = "#89e051" }, -- DevIconBashrc  xxx ctermfg=113 guifg=#89e051
		DevIconBat                                                                                                   { fg = "#c1f12e" }, -- DevIconBat     xxx ctermfg=154 guifg=#c1f12e
		DevIconBinaryGLTF                                                                                            { fg = "#ffb13b" }, -- DevIconBinaryGLTF xxx ctermfg=215 guifg=#ffb13b
		DevIconBmp                                                                                                   { fg = "#a074c4" }, -- DevIconBmp     xxx ctermfg=140 guifg=#a074c4
		DevIconBrewfile                                                                                              { fg = "#701516" }, -- DevIconBrewfile xxx ctermfg=52 guifg=#701516
		DevIconC                                                                                                     { fg = snazzy.cyan }, -- DevIconC       xxx guifg=#9aedfe
		DevIconCMake                                                                                                 { fg = "#6d8086" }, -- DevIconCMake   xxx ctermfg=66 guifg=#6d8086
		DevIconCMakeLists                                                                                            { fg = "#6d8086" }, -- DevIconCMakeLists xxx ctermfg=66 guifg=#6d8086
		DevIconCPlusPlus                                                                                             { fg = snazzy.magenta }, -- DevIconCPlusPlus xxx guifg=#ff6ac1
		DevIconClojure                                                                                               { fg = "#8dc149" }, -- DevIconClojure xxx ctermfg=107 guifg=#8dc149
		DevIconClojureC                                                                                              { fg = "#8dc149" }, -- DevIconClojureC xxx ctermfg=107 guifg=#8dc149
		DevIconClojureDart                                                                                           { fg = "#519aba" }, -- DevIconClojureDart xxx ctermfg=67 guifg=#519aba
		DevIconClojureJS                                                                                             { fg = "#519aba" }, -- DevIconClojureJS xxx ctermfg=67 guifg=#519aba
		DevIconCobol                                                                                                 { fg = "#005ca5" }, -- DevIconCobol   xxx ctermfg=25 guifg=#005ca5
		DevIconCoffee                                                                                                { fg = "#cbcb41" }, -- DevIconCoffee  xxx ctermfg=185 guifg=#cbcb41
		DevIconConf                                                                                                  { fg = "#6d8086" }, -- DevIconConf    xxx ctermfg=66 guifg=#6d8086
		DevIconConfigRu                                                                                              { fg = "#701516" }, -- DevIconConfigRu xxx ctermfg=52 guifg=#701516
		DevIconConfiguration                                                                                         { fg = "#ececec" }, -- DevIconConfiguration xxx ctermfg=231 guifg=#ececec
		DevIconCp                                                                                                    { fg = "#519aba" }, -- DevIconCp      xxx ctermfg=67 guifg=#519aba
		DevIconCpp                                                                                                   { fg = "#519aba" }, -- DevIconCpp     xxx ctermfg=67 guifg=#519aba
		DevIconCrystal                                                                                               { fg = "#000000" }, -- DevIconCrystal xxx ctermfg=16 guifg=#000000
		DevIconCs                                                                                                    { fg = "#596706" }, -- DevIconCs      xxx ctermfg=58 guifg=#596706
		DevIconCsh                                                                                                   { fg = "#4d5a5e" }, -- DevIconCsh     xxx ctermfg=59 guifg=#4d5a5e
		DevIconCson                                                                                                  { fg = "#cbcb41" }, -- DevIconCson    xxx ctermfg=185 guifg=#cbcb41
		DevIconCss                                                                                                   { fg = "#42a5f5" }, -- DevIconCss     xxx ctermfg=39 guifg=#42a5f5
		DevIconCsv                                                                                                   { fg = "#89e051" }, -- DevIconCsv     xxx ctermfg=113 guifg=#89e051
		DevIconCxx                                                                                                   { fg = "#519aba" }, -- DevIconCxx     xxx ctermfg=67 guifg=#519aba
		DevIconD                                                                                                     { fg = "#427819" }, -- DevIconD       xxx ctermfg=64 guifg=#427819
		DevIconDart                                                                                                  { fg = "#03589c" }, -- DevIconDart    xxx ctermfg=25 guifg=#03589c
		DevIconDb                                                                                                    { fg = "#dad8d8" }, -- DevIconDb      xxx ctermfg=188 guifg=#dad8d8
		DevIconDefault                                                                                               { fg = "#6d8086" }, -- DevIconDefault xxx ctermfg=66 guifg=#6d8086
		DevIconDesktopEntry                                                                                          { fg = "#563d7c" }, -- DevIconDesktopEntry xxx ctermfg=60 guifg=#563d7c
		DevIconDiff                                                                                                  { fg = "#41535b" }, -- DevIconDiff    xxx ctermfg=59 guifg=#41535b
		DevIconDoc                                                                                                   { fg = "#185abd" }, -- DevIconDoc     xxx ctermfg=25 guifg=#185abd
		DevIconDockerfile                                                                                            { fg = "#384d54" }, -- DevIconDockerfile xxx ctermfg=59 guifg=#384d54
		DevIconDrools                                                                                                { fg = "#ffafaf" }, -- DevIconDrools  xxx ctermfg=217 guifg=#ffafaf
		DevIconDropbox                                                                                               { fg = "#0061fe" }, -- DevIconDropbox xxx ctermfg=27 guifg=#0061fe
		DevIconDsStore                                                                                               { fg = "#41535b" }, -- DevIconDsStore xxx ctermfg=59 guifg=#41535b
		DevIconDump                                                                                                  { fg = "#dad8d8" }, -- DevIconDump    xxx ctermfg=188 guifg=#dad8d8
		DevIconEdn                                                                                                   { fg = "#519aba" }, -- DevIconEdn     xxx ctermfg=67 guifg=#519aba
		DevIconEex                                                                                                   { fg = "#a074c4" }, -- DevIconEex     xxx ctermfg=140 guifg=#a074c4
		DevIconEjs                                                                                                   { fg = "#cbcb41" }, -- DevIconEjs     xxx ctermfg=185 guifg=#cbcb41
		DevIconElm                                                                                                   { fg = "#519aba" }, -- DevIconElm     xxx ctermfg=67 guifg=#519aba
		DevIconEnv                                                                                                   { fg = "#faf743" }, -- DevIconEnv     xxx ctermfg=226 guifg=#faf743
		DevIconEpp                                                                                                   { fg = "#ffa61a" }, -- DevIconEpp     xxx guifg=#ffa61a
		DevIconErb                                                                                                   { fg = "#701516" }, -- DevIconErb     xxx ctermfg=52 guifg=#701516
		DevIconErl                                                                                                   { fg = "#b83998" }, -- DevIconErl     xxx ctermfg=132 guifg=#b83998
		DevIconEx                                                                                                    { fg = "#a074c4" }, -- DevIconEx      xxx ctermfg=140 guifg=#a074c4
		DevIconExs                                                                                                   { fg = "#a074c4" }, -- DevIconExs     xxx ctermfg=140 guifg=#a074c4
		DevIconFavicon                                                                                               { fg = "#cbcb41" }, -- DevIconFavicon xxx ctermfg=185 guifg=#cbcb41
		DevIconFennel                                                                                                { fg = "#fff3d7" }, -- DevIconFennel  xxx ctermfg=230 guifg=#fff3d7
		DevIconFish                                                                                                  { fg = "#4d5a5e" }, -- DevIconFish    xxx ctermfg=59 guifg=#4d5a5e
		DevIconFs                                                                                                    { fg = "#519aba" }, -- DevIconFs      xxx ctermfg=67 guifg=#519aba
		DevIconFsharp                                                                                                { fg = "#519aba" }, -- DevIconFsharp  xxx ctermfg=67 guifg=#519aba
		DevIconFsi                                                                                                   { fg = "#519aba" }, -- DevIconFsi     xxx ctermfg=67 guifg=#519aba
		DevIconFsscript                                                                                              { fg = "#519aba" }, -- DevIconFsscript xxx ctermfg=67 guifg=#519aba
		DevIconFsx                                                                                                   { fg = "#519aba" }, -- DevIconFsx     xxx ctermfg=67 guifg=#519aba
		DevIconGDScript                                                                                              { fg = "#6d8086" }, -- DevIconGDScript xxx ctermfg=66 guifg=#6d8086
		DevIconGemfile                                                                                               { fg = snazzy.red }, -- DevIconGemfile xxx guifg=#ff5c57
		DevIconGemspec                                                                                               { fg = "#701516" }, -- DevIconGemspec xxx ctermfg=52 guifg=#701516
		DevIconGif                                                                                                   { fg = "#a074c4" }, -- DevIconGif     xxx ctermfg=140 guifg=#a074c4
		DevIconGitAttributes                                                                                         { fg = "#41535b" }, -- DevIconGitAttributes xxx ctermfg=59 guifg=#41535b
		DevIconGitCommit                                                                                             { fg = "#41535b" }, -- DevIconGitCommit xxx ctermfg=59 guifg=#41535b
		DevIconGitConfig                                                                                             { fg = "#41535b" }, -- DevIconGitConfig xxx ctermfg=59 guifg=#41535b
		DevIconGitIgnore                                                                                             { fg = "#41535b" }, -- DevIconGitIgnore xxx ctermfg=59 guifg=#41535b
		DevIconGitLogo                                                                                               { fg = "#f14c28" }, -- DevIconGitLogo xxx ctermfg=202 guifg=#f14c28
		DevIconGitModules                                                                                            { fg = "#41535b" }, -- DevIconGitModules xxx ctermfg=59 guifg=#41535b
		DevIconGitlabCI                                                                                              { fg = "#e24329" }, -- DevIconGitlabCI xxx ctermfg=166 guifg=#e24329
		DevIconGo                                                                                                    { fg = snazzy.cyan }, -- DevIconGo      xxx guifg=#9aedfe
		DevIconGodotProject                                                                                          { fg = "#6d8086" }, -- DevIconGodotProject xxx ctermfg=66 guifg=#6d8086
		DevIconGruntfile                                                                                             { fg = "#e37933" }, -- DevIconGruntfile xxx ctermfg=173 guifg=#e37933
		DevIconGulpfile                                                                                              { fg = "#cc3e44" }, -- DevIconGulpfile xxx ctermfg=167 guifg=#cc3e44
		DevIconGvimrc                                                                                                { fg = snazzy.green }, -- DevIconGvimrc  xxx guifg=#5af78e
		DevIconH                                                                                                     { fg = "#a074c4" }, -- DevIconH       xxx ctermfg=140 guifg=#a074c4
		DevIconHaml                                                                                                  { fg = "#eaeae1" }, -- DevIconHaml    xxx ctermfg=188 guifg=#eaeae1
		DevIconHbs                                                                                                   { fg = "#f0772b" }, -- DevIconHbs     xxx ctermfg=208 guifg=#f0772b
		DevIconHeex                                                                                                  { fg = "#a074c4" }, -- DevIconHeex    xxx ctermfg=140 guifg=#a074c4
		DevIconHh                                                                                                    { fg = "#a074c4" }, -- DevIconHh      xxx ctermfg=140 guifg=#a074c4
		DevIconHpp                                                                                                   { fg = "#a074c4" }, -- DevIconHpp     xxx ctermfg=140 guifg=#a074c4
		DevIconHrl                                                                                                   { fg = "#b83998" }, -- DevIconHrl     xxx ctermfg=132 guifg=#b83998
		DevIconHs                                                                                                    { fg = "#a074c4" }, -- DevIconHs      xxx ctermfg=140 guifg=#a074c4
		DevIconHtm                                                                                                   { fg = "#e34c26" }, -- DevIconHtm     xxx ctermfg=166 guifg=#e34c26
		DevIconHtml                                                                                                  { fg = "#e44d26" }, -- DevIconHtml    xxx ctermfg=202 guifg=#e44d26
		DevIconHxx                                                                                                   { fg = "#a074c4" }, -- DevIconHxx     xxx ctermfg=140 guifg=#a074c4
		DevIconIco                                                                                                   { fg = "#cbcb41" }, -- DevIconIco     xxx ctermfg=185 guifg=#cbcb41
		DevIconImportConfiguration                                                                                   { fg = "#ececec" }, -- DevIconImportConfiguration xxx ctermfg=231 guifg=#ececec
		DevIconIni                                                                                                   { fg = "#6d8086" }, -- DevIconIni     xxx ctermfg=66 guifg=#6d8086
		DevIconJava                                                                                                  { fg = "#cc3e44" }, -- DevIconJava    xxx ctermfg=167 guifg=#cc3e44
		DevIconJl                                                                                                    { fg = "#a270ba" }, -- DevIconJl      xxx ctermfg=133 guifg=#a270ba
		DevIconJpeg                                                                                                  { fg = "#a074c4" }, -- DevIconJpeg    xxx ctermfg=140 guifg=#a074c4
		DevIconJpg                                                                                                   { fg = "#a074c4" }, -- DevIconJpg     xxx ctermfg=140 guifg=#a074c4
		DevIconJs                                                                                                    { fg = snazzy.yellow }, -- DevIconJs      xxx guifg=#f3f99d
		DevIconJson                                                                                                  { fg = snazzy.yellow }, -- DevIconJson    xxx guifg=#f3f99d
		DevIconJsx                                                                                                   { fg = snazzy.cyan }, -- DevIconJsx     xxx guifg=#9aedfe
		DevIconKotlin                                                                                                { fg = "#f88a02" }, -- DevIconKotlin  xxx ctermfg=208 guifg=#f88a02
		DevIconKotlinScript                                                                                          { fg = "#f88a02" }, -- DevIconKotlinScript xxx ctermfg=208 guifg=#f88a02
		DevIconKsh                                                                                                   { fg = "#4d5a5e" }, -- DevIconKsh     xxx ctermfg=59 guifg=#4d5a5e
		DevIconLeex                                                                                                  { fg = "#a074c4" }, -- DevIconLeex    xxx ctermfg=140 guifg=#a074c4
		DevIconLess                                                                                                  { fg = "#563d7c" }, -- DevIconLess    xxx ctermfg=60 guifg=#563d7c
		DevIconLhs                                                                                                   { fg = "#a074c4" }, -- DevIconLhs     xxx ctermfg=140 guifg=#a074c4
		DevIconLicense                                                                                               { fg = "#cbcb41" }, -- DevIconLicense xxx ctermfg=185 guifg=#cbcb41
		DevIconLock                                                                                                  { fg = "#bbbbbb" }, -- DevIconLock    xxx ctermfg=250 guifg=#bbbbbb
		DevIconLog                                                                                                   { fg = "#ffffff" }, -- DevIconLog     xxx ctermfg=15 guifg=#ffffff
		DevIconLua                                                                                                   { fg = snazzy.blue }, -- DevIconLua     xxx guifg=#57c7ff
		DevIconMakefile                                                                                              { fg = "#6d8086" }, -- DevIconMakefile xxx ctermfg=66 guifg=#6d8086
		DevIconMarkdown                                                                                              { fg = "#519aba" }, -- DevIconMarkdown xxx ctermfg=67 guifg=#519aba
		DevIconMaterial                                                                                              { fg = "#b83998" }, -- DevIconMaterial xxx ctermfg=132 guifg=#b83998
		DevIconMd                                                                                                    { fg = "#ffffff" }, -- DevIconMd      xxx ctermfg=15 guifg=#ffffff
		DevIconMdx                                                                                                   { fg = "#519aba" }, -- DevIconMdx     xxx ctermfg=67 guifg=#519aba
		DevIconMint                                                                                                  { fg = "#87c095" }, -- DevIconMint    xxx ctermfg=108 guifg=#87c095
		DevIconMixLock                                                                                               { fg = "#a074c4" }, -- DevIconMixLock xxx ctermfg=140 guifg=#a074c4
		DevIconMjs                                                                                                   { fg = "#f1e05a" }, -- DevIconMjs     xxx ctermfg=221 guifg=#f1e05a
		DevIconMl                                                                                                    { fg = "#e37933" }, -- DevIconMl      xxx ctermfg=173 guifg=#e37933
		DevIconMli                                                                                                   { fg = "#e37933" }, -- DevIconMli     xxx ctermfg=173 guifg=#e37933
		DevIconMotoko                                                                                                { fg = "#9772fb" }, -- DevIconMotoko  xxx ctermfg=99 guifg=#9772fb
		DevIconMustache                                                                                              { fg = "#e37933" }, -- DevIconMustache xxx ctermfg=173 guifg=#e37933
		DevIconNPMIgnore                                                                                             { fg = "#e8274b" }, -- DevIconNPMIgnore xxx ctermfg=161 guifg=#e8274b
		DevIconNPMrc                                                                                                 { fg = "#e8274b" }, -- DevIconNPMrc   xxx ctermfg=161 guifg=#e8274b
		DevIconNim                                                                                                   { fg = "#f3d400" }, -- DevIconNim     xxx ctermfg=220 guifg=#f3d400
		DevIconNix                                                                                                   { fg = "#7ebae4" }, -- DevIconNix     xxx ctermfg=110 guifg=#7ebae4
		DevIconNodeModules                                                                                           { fg = "#e8274b" }, -- DevIconNodeModules xxx ctermfg=161 guifg=#e8274b
		DevIconOPUS                                                                                                  { fg = "#f88a02" }, -- DevIconOPUS    xxx ctermfg=208 guifg=#f88a02
		DevIconOpenTypeFont                                                                                          { fg = "#ececec" }, -- DevIconOpenTypeFont xxx ctermfg=231 guifg=#ececec
		DevIconPackageJson                                                                                           { fg = "#e8274b" }, -- DevIconPackageJson xxx guifg=#e8274b
		DevIconPackageLockJson                                                                                       { fg = "#7a0d21" }, -- DevIconPackageLockJson xxx guifg=#7a0d21
		DevIconPackedResource                                                                                        { fg = "#6d8086" }, -- DevIconPackedResource xxx ctermfg=66 guifg=#6d8086
		DevIconPdf                                                                                                   { fg = "#b30b00" }, -- DevIconPdf     xxx ctermfg=124 guifg=#b30b00
		DevIconPhp                                                                                                   { fg = "#a074c4" }, -- DevIconPhp     xxx ctermfg=140 guifg=#a074c4
		DevIconPl                                                                                                    { fg = "#519aba" }, -- DevIconPl      xxx ctermfg=67 guifg=#519aba
		DevIconPm                                                                                                    { fg = "#519aba" }, -- DevIconPm      xxx ctermfg=67 guifg=#519aba
		DevIconPng                                                                                                   { fg = "#a074c4" }, -- DevIconPng     xxx ctermfg=140 guifg=#a074c4
		DevIconPp                                                                                                    { fg = "#ffa61a" }, -- DevIconPp      xxx guifg=#ffa61a
		DevIconPpt                                                                                                   { fg = "#cb4a32" }, -- DevIconPpt     xxx ctermfg=167 guifg=#cb4a32
		DevIconPrisma                                                                                                { fg = "#ffffff" }, -- DevIconPrisma  xxx ctermfg=15 guifg=#ffffff
		DevIconProcfile                                                                                              { fg = "#a074c4" }, -- DevIconProcfile xxx ctermfg=140 guifg=#a074c4
		DevIconProlog                                                                                                { fg = "#e4b854" }, -- DevIconProlog  xxx ctermfg=179 guifg=#e4b854
		DevIconPromptPs1                                                                                             { fg = "#4d5a5e" }, -- DevIconPromptPs1 xxx ctermfg=59 guifg=#4d5a5e
		DevIconPsb                                                                                                   { fg = "#519aba" }, -- DevIconPsb     xxx ctermfg=67 guifg=#519aba
		DevIconPsd                                                                                                   { fg = "#519aba" }, -- DevIconPsd     xxx ctermfg=67 guifg=#519aba
		DevIconPy                                                                                                    { fg = "#ffbc03" }, -- DevIconPy      xxx ctermfg=61 guifg=#ffbc03
		DevIconPyc                                                                                                   { fg = "#ffe291" }, -- DevIconPyc     xxx ctermfg=67 guifg=#ffe291
		DevIconPyd                                                                                                   { fg = "#ffe291" }, -- DevIconPyd     xxx ctermfg=67 guifg=#ffe291
		DevIconPyo                                                                                                   { fg = "#ffe291" }, -- DevIconPyo     xxx ctermfg=67 guifg=#ffe291
		DevIconR                                                                                                     { fg = "#358a5b" }, -- DevIconR       xxx ctermfg=65 guifg=#358a5b
		DevIconRake                                                                                                  { fg = snazzy.red }, -- DevIconRake    xxx guifg=#ff5c57
		DevIconRakeFile                                                                                              { fg = snazzy.red }, -- DevIconRakeFile xxx guifg=#ff5c57
		DevIconRb                                                                                                    { fg = snazzy.red }, -- DevIconRb      xxx guifg=#ff5c57
		DevIconRlib                                                                                                  { fg = "#dea584" }, -- DevIconRlib    xxx ctermfg=180 guifg=#dea584
		DevIconRmd                                                                                                   { fg = "#519aba" }, -- DevIconRmd     xxx ctermfg=67 guifg=#519aba
		DevIconRproj                                                                                                 { fg = "#358a5b" }, -- DevIconRproj   xxx ctermfg=65 guifg=#358a5b
		DevIconRs                                                                                                    { fg = "#dea584" }, -- DevIconRs      xxx ctermfg=180 guifg=#dea584
		DevIconRss                                                                                                   { fg = "#fb9d3b" }, -- DevIconRss     xxx ctermfg=215 guifg=#fb9d3b
		DevIconSass                                                                                                  { fg = "#f55385" }, -- DevIconSass    xxx ctermfg=204 guifg=#f55385
		DevIconScala                                                                                                 { fg = "#cc3e44" }, -- DevIconScala   xxx ctermfg=167 guifg=#cc3e44
		DevIconScss                                                                                                  { fg = "#f55385" }, -- DevIconScss    xxx ctermfg=204 guifg=#f55385
		DevIconSettingsJson                                                                                          { fg = "#854cc7" }, -- DevIconSettingsJson xxx ctermfg=98 guifg=#854cc7
		DevIconSh                                                                                                    { fg = "#4d5a5e" }, -- DevIconSh      xxx ctermfg=59 guifg=#4d5a5e
		DevIconSig                                                                                                   { fg = "#e37933" }, -- DevIconSig     xxx ctermfg=173 guifg=#e37933
		DevIconSlim                                                                                                  { fg = "#e34c26" }, -- DevIconSlim    xxx ctermfg=166 guifg=#e34c26
		DevIconSln                                                                                                   { fg = "#854cc7" }, -- DevIconSln     xxx ctermfg=98 guifg=#854cc7
		DevIconSml                                                                                                   { fg = "#e37933" }, -- DevIconSml     xxx ctermfg=173 guifg=#e37933
		DevIconSolidity                                                                                              { fg = "#519aba" }, -- DevIconSolidity xxx ctermfg=67 guifg=#519aba
		DevIconSql                                                                                                   { fg = "#dad8d8" }, -- DevIconSql     xxx ctermfg=188 guifg=#dad8d8
		DevIconStyl                                                                                                  { fg = "#8dc149" }, -- DevIconStyl    xxx ctermfg=107 guifg=#8dc149
		DevIconSuo                                                                                                   { fg = "#e37933" }, -- DevIconSuo     xxx ctermfg=98 guifg=#e37933
		DevIconSvelte                                                                                                { fg = "#ff3e00" }, -- DevIconSvelte  xxx ctermfg=202 guifg=#ff3e00
		DevIconSvg                                                                                                   { fg = "#ffb13b" }, -- DevIconSvg     xxx ctermfg=215 guifg=#ffb13b
		DevIconSwift                                                                                                 { fg = "#e37933" }, -- DevIconSwift   xxx ctermfg=173 guifg=#e37933
		DevIconSystemVerilog                                                                                         { fg = "#019833" }, -- DevIconSystemVerilog xxx ctermfg=29 guifg=#019833
		DevIconTcl                                                                                                   { fg = "#1e5cb3" }, -- DevIconTcl     xxx ctermfg=67 guifg=#1e5cb3
		DevIconTerminal                                                                                              { fg = snazzy.green }, -- DevIconTerminal xxx guifg=#5af78e
		DevIconTex                                                                                                   { fg = "#3d6117" }, -- DevIconTex     xxx ctermfg=58 guifg=#3d6117
		DevIconTextResource                                                                                          { fg = "#cbcb41" }, -- DevIconTextResource xxx ctermfg=185 guifg=#cbcb41
		DevIconTextScene                                                                                             { fg = "#a074c4" }, -- DevIconTextScene xxx ctermfg=140 guifg=#a074c4
		DevIconToml                                                                                                  { fg = "#6d8086" }, -- DevIconToml    xxx ctermfg=66 guifg=#6d8086
		DevIconTor                                                                                                   { fg = "#519aba" }, -- DevIconTor     xxx ctermfg=67 guifg=#519aba
		DevIconTs                                                                                                    { fg = snazzy.blue }, -- DevIconTs      xxx guifg=#57c7ff
		DevIconTsx                                                                                                   { fg = snazzy.cyan }, -- DevIconTsx     xxx guifg=#9aedfe
		DevIconTwig                                                                                                  { fg = "#8dc149" }, -- DevIconTwig    xxx ctermfg=107 guifg=#8dc149
		DevIconTxt                                                                                                   { fg = "#89e051" }, -- DevIconTxt     xxx ctermfg=113 guifg=#89e051
		DevIconVHDL                                                                                                  { fg = "#019833" }, -- DevIconVHDL    xxx ctermfg=29 guifg=#019833
		DevIconVagrantfile                                                                                           { fg = "#1563ff" }, -- DevIconVagrantfile xxx ctermfg=27 guifg=#1563ff
		DevIconVerilog                                                                                               { fg = "#019833" }, -- DevIconVerilog xxx ctermfg=29 guifg=#019833
		DevIconVim                                                                                                   { fg = snazzy.green }, -- DevIconVim     xxx guifg=#5af78e
		DevIconVimrc                                                                                                 { fg = snazzy.green }, -- DevIconVimrc   xxx guifg=#5af78e
		DevIconVue                                                                                                   { fg = "#8dc149" }, -- DevIconVue     xxx ctermfg=107 guifg=#8dc149
		DevIconWebmanifest                                                                                           { fg = "#f1e05a" }, -- DevIconWebmanifest xxx ctermfg=221 guifg=#f1e05a
		DevIconWebp                                                                                                  { fg = "#a074c4" }, -- DevIconWebp    xxx ctermfg=140 guifg=#a074c4
		DevIconWebpack                                                                                               { fg = "#519aba" }, -- DevIconWebpack xxx ctermfg=67 guifg=#519aba
		DevIconXcPlayground                                                                                          { fg = "#e37933" }, -- DevIconXcPlayground xxx ctermfg=173 guifg=#e37933
		DevIconXls                                                                                                   { fg = "#207245" }, -- DevIconXls     xxx ctermfg=23 guifg=#207245
		DevIconXml                                                                                                   { fg = "#e37933" }, -- DevIconXml     xxx ctermfg=173 guifg=#e37933
		DevIconXul                                                                                                   { fg = "#e37933" }, -- DevIconXul     xxx ctermfg=173 guifg=#e37933
		DevIconYaml                                                                                                  { fg = "#6d8086" }, -- DevIconYaml    xxx ctermfg=66 guifg=#6d8086
		DevIconYml                                                                                                   { fg = "#6d8086" }, -- DevIconYml     xxx ctermfg=66 guifg=#6d8086
		DevIconZig                                                                                                   { fg = "#f69a1b" }, -- DevIconZig     xxx ctermfg=208 guifg=#f69a1b
		DevIconZsh                                                                                                   { fg = snazzy.green }, -- DevIconZsh     xxx guifg=#5af78e
		DevIconZshenv                                                                                                { fg = "#89e051" }, -- DevIconZshenv  xxx ctermfg=113 guifg=#89e051
		DevIconZshprofile                                                                                            { fg = "#89e051" }, -- DevIconZshprofile xxx ctermfg=113 guifg=#89e051
		DevIconZshrc                                                                                                 { fg = snazzy.green }, -- DevIconZshrc   xxx guifg=#5af78e
		DiffAdd                                                                                                      { bg = "#00331a" }, -- DiffAdd        xxx guibg=#00331a
		DiffChange                                                                                                   { bg = "#434805" }, -- DiffChange     xxx guibg=#434805
		DiffDelete                                                                                                   { bg = snazzy.diff.delete, fg = snazzy.red }, -- DiffDelete     xxx guibg=#4d0300
		DiffText                                                                                                     { bg = "#434805", gui = "bold", fg = snazzy.yellow }, -- DiffText       xxx cterm=bold gui=bold guifg=#f3f99d guibg=#434805
		DiffviewCursorLine                                                                                           { CursorLine }, -- DiffviewCursorLine xxx links to CursorLine
		DiffviewDiffAddAsDelete                                                                                      { bg = snazzy.diff.delete, fg = snazzy.red }, -- DiffviewDiffAddAsDelete xxx guibg=#4d0300
		DiffviewDiffDelete                                                                                           { Comment }, -- DiffviewDiffDelete xxx links to Comment
		DiffviewDim1                                                                                                 { fg = "#606580" }, -- DiffviewDim1   xxx cterm= gui= guifg=#606580
		EndOfBuffer                                                                                                  { fg = "#282a36" }, -- EndOfBuffer    xxx guifg=#282a36
		DiffviewEndOfBuffer                                                                                          { EndOfBuffer }, -- DiffviewEndOfBuffer xxx links to EndOfBuffer
		DiffviewFilePanelCounter                                                                                     { gui = "bold", fg = snazzy.cyan }, -- DiffviewFilePanelCounter xxx cterm=bold gui=bold guifg=#9aedfe
		DiffviewFilePanelDeletions                                                                                   { diffRemoved }, -- DiffviewFilePanelDeletions xxx links to diffRemoved
		DiffviewFilePanelFileName                                                                                    { fg = "#eff0eb" }, -- DiffviewFilePanelFileName xxx cterm= gui= guifg=#eff0eb
		DiffviewFilePanelInsertions                                                                                  { diffAdded }, -- DiffviewFilePanelInsertions xxx links to diffAdded
		DiffviewFilePanelPath                                                                                        { Comment }, -- DiffviewFilePanelPath xxx links to Comment
		DiffviewFilePanelTitle                                                                                       { gui = "bold", fg = snazzy.yellow }, -- DiffviewFilePanelRootPath xxx links to DiffviewFilePanelTitle
		DiffviewFilePanelRootPath                                                                                    { DiffviewFilePanelTitle }, -- DiffviewFilePanelTitle xxx cterm=bold gui=bold guifg=#f3f99d
		DiffviewNonText                                                                                              { NonText }, -- DiffviewNonText xxx links to NonText
		DiffviewNormal                                                                                               { Normal }, -- DiffviewNormal xxx links to Normal
		DiffviewPrimary                                                                                              { fg = snazzy.purple }, -- DiffviewPrimary xxx cterm= gui= guifg=#a39df9
		DiffviewSecondary                                                                                            { fg = snazzy.yellow }, -- DiffviewSecondary xxx cterm= gui= guifg=#f3f99d
		DiffviewSignColumn                                                                                           { Normal }, -- DiffviewSignColumn xxx links to Normal
		DiffviewStatusAdded                                                                                          { diffAdded }, -- DiffviewStatusAdded xxx links to diffAdded
		DiffviewStatusBroken                                                                                         { diffRemoved }, -- DiffviewStatusBroken xxx links to diffRemoved
		DiffviewStatusCopied                                                                                         { diffChanged }, -- DiffviewStatusCopied xxx links to diffChanged
		DiffviewStatusDeleted                                                                                        { diffRemoved }, -- DiffviewStatusDeleted xxx links to diffRemoved
		DiffviewStatusIgnored                                                                                        { Comment }, -- DiffviewStatusIgnored xxx links to Comment
		DiffviewStatusLine                                                                                           { StatusLine }, -- DiffviewStatusLine xxx links to StatusLine
		DiffviewStatusLineNC                                                                                         { StatusLineNC }, -- DiffviewStatusLineNC xxx links to StatusLineNC
		DiffviewStatusModified                                                                                       { diffChanged }, -- DiffviewStatusModified xxx links to diffChanged
		DiffviewStatusRenamed                                                                                        { diffChanged }, -- DiffviewStatusRenamed xxx links to diffChanged
		DiffviewStatusTypeChange                                                                                     { diffChanged }, -- DiffviewStatusTypeChange xxx links to diffChanged
		DiffviewStatusUnknown                                                                                        { diffRemoved }, -- DiffviewStatusUnknown xxx links to diffRemoved
		DiffviewStatusUnmerged                                                                                       { diffChanged }, -- DiffviewStatusUnmerged xxx links to diffChanged
		DiffviewStatusUntracked                                                                                      { diffAdded }, -- DiffviewStatusUntracked xxx links to diffAdded
		Directory                                                                                                    { gui = "bold", fg = snazzy.cyan }, -- Directory      xxx cterm=bold gui=bold guifg=#9aedfe
		DiffviewFolderName                                                                                           { Directory }, -- DiffviewFolderName xxx links to Directory
		Error                                                                                                        { fg = snazzy.red }, -- Error          xxx guifg=#ff5c57
		ErrorMsg                                                                                                     { gui = "bold", fg = snazzy.red }, -- ErrorMsg       xxx cterm=bold gui=bold guifg=#ff5c57
		Exception                                                                                                    { fg = snazzy.red }, -- Exception      xxx guifg=#ff5c57
		FidgetTask                                                                                                   { NonText }, -- FidgetTask     xxx links to NonText
		FidgetTitle                                                                                                  { Title }, -- FidgetTitle    xxx links to Title
		Float                                                                                                        { fg = "#a1a6a8" }, -- Float          xxx guifg=#a1a6a8
		FloatBorder                                                                                                  { fg = snazzy.blue }, -- FloatBorder    xxx guifg=#57c7ff
		FloatShadow                                                                                                  { blend = 80, bg = "black" }, -- FloatShadow    xxx guibg=Black blend=80
		FloatShadowThrough                                                                                           { blend = 100, bg = "black" }, -- FloatShadowThrough xxx guibg=Black blend=100
		FloatTitle                                                                                                   { FloatBorder }, -- FloatTitle     xxx links to FloatBorder
		FoldColumn                                                                                                   { gui = "italic", fg = "#606580" }, -- FoldColumn     xxx cterm=italic gui=italic guifg=#606580 guibg=#282a36
		Folded                                                                                                       { bg = snazzy.statusline.bg }, -- Folded         xxx guibg=#3a3d4d
		Function                                                                                                     { gui = "bold", fg = snazzy.purple }, -- Function       xxx cterm=bold gui=bold guifg=#a39df9
		GitConflictAncestor                                                                                          { bg = "#68217a", gui = "bold" }, -- GitConflictAncestor xxx cterm=bold gui=bold guibg=#68217a
		GitConflictAncestorLabel                                                                                     { bg = "#a634c3" }, -- GitConflictAncestorLabel xxx guibg=#a634c3
		GitConflictCurrent                                                                                           { bg = "#434805", gui = "bold" }, -- GitConflictCurrent xxx cterm=bold gui=bold guibg=#434805
		GitConflictCurrentLabel                                                                                      { bg = "#6b7308" }, -- GitConflictCurrentLabel xxx guibg=#6b7308
		GitConflictIncoming                                                                                          { bg = "#00331a", gui = "bold" }, -- GitConflictIncoming xxx cterm=bold gui=bold guibg=#00331a
		GitConflictIncomingLabel                                                                                     { bg = "#005129" }, -- GitConflictIncomingLabel xxx guibg=#005129
		GitGutterAdd                                                                                                 { fg = snazzy.green }, -- GitGutterAdd   xxx guifg=#5af78e
		GitGutterChange                                                                                              { fg = snazzy.yellow }, -- GitGutterChange xxx guifg=#f3f99d
		GitGutterChangeDelete                                                                                        { fg = snazzy.red }, -- GitGutterChangeDelete xxx guifg=#ff5c57
		GitGutterDelete                                                                                              { fg = snazzy.red }, -- GitGutterDelete xxx guifg=#ff5c57
		GitSignsAdd                                                                                                  { fg = snazzy.green }, -- GitSignsAdd    xxx guifg=#5af78e
		GitSignsAddInline                                                                                            { TermCursor }, -- GitSignsAddInline xxx links to TermCursor
		GitSignsAddLn                                                                                                { DiffAdd }, -- GitSignsAddLn  xxx links to DiffAdd
		GitSignsAddNr                                                                                                { GitSignsAdd }, -- GitSignsAddNr  xxx links to GitSignsAdd
		GitSignsAddPreview                                                                                           { DiffAdd }, -- GitSignsAddPreview xxx links to DiffAdd
		GitSignsChange                                                                                               { fg = snazzy.yellow }, -- GitSignsChange xxx guifg=#f3f99d
		GitSignsChangeInline                                                                                         { TermCursor }, -- GitSignsChangeInline xxx links to TermCursor
		GitSignsChangeLn                                                                                             { DiffChange }, -- GitSignsChangeLn xxx links to DiffChange
		GitSignsChangeNr                                                                                             { GitSignsChange }, -- GitSignsChangeNr xxx links to GitSignsChange
		GitSignsCurrentLineBlame                                                                                     { bg = snazzy.statusline.bg, gui = "italic", fg = "#606580" }, -- GitSignsCurrentLineBlame xxx cterm=italic gui=italic guifg=#606580 guibg=#3a3d4d
		GitSignsDelete                                                                                               { fg = snazzy.red }, -- GitSignsDelete xxx guifg=#ff5c57
		GitSignsDeleteInline                                                                                         { TermCursor }, -- GitSignsDeleteInline xxx links to TermCursor
		GitSignsDeleteNr                                                                                             { GitSignsDelete }, -- GitSignsDeleteNr xxx links to GitSignsDelete
		GitSignsDeletePreview                                                                                        { DiffDelete }, -- GitSignsDeletePreview xxx links to DiffDelete
		GitSignsDeleteVirtLn                                                                                         { DiffDelete }, -- GitSignsDeleteVirtLn xxx links to DiffDelete
		HopCursor                                                                                                    { Cursor }, -- HopCursor      xxx links to Cursor
		HopNextKey                                                                                                   { gui = "bold", fg = snazzy.hop.next_key }, -- HopNextKey     xxx cterm=bold gui=bold guifg=#ff007c
		HopNextKey1                                                                                                  { gui = "bold", fg = snazzy.hop.next_key1 }, -- HopNextKey1    xxx cterm=bold gui=bold guifg=#00dfff
		HopNextKey2                                                                                                  { fg = snazzy.hop.next_key2 }, -- HopNextKey2    xxx guifg=#2b8db3
		HopPreview                                                                                                   { gui = "bold", fg = "#b8bb26" }, -- HopPreview     xxx cterm=bold gui=bold guifg=#b8bb26
		HopUnmatched                                                                                                 { sp = "#666666", fg = "#666666" }, -- HopUnmatched   xxx guifg=#666666 guibg=#282a36 guisp=#666666
		Ignore                                                                                                       { fg = "#686868" }, -- Ignore         xxx guifg=#686868
		IlluminatedWordRead                                                                                          { bg = snazzy.statusline.bg }, -- IlluminatedWordRead xxx guibg=#3a3d4d
		IlluminatedWordText                                                                                          { bg = snazzy.statusline.bg }, -- IlluminatedWordText xxx guibg=#3a3d4d
		IlluminatedWordWrite                                                                                         { bg = snazzy.statusline.bg }, -- IlluminatedWordWrite xxx guibg=#3a3d4d
		InclineNormal                                                                                                { NormalFloat }, -- InclineNormal  xxx links to NormalFloat
		InclineNormalNC                                                                                              { NormalFloat }, -- InclineNormalNC xxx links to NormalFloat
		Include                                                                                                      { fg = snazzy.yellow }, -- Include        xxx guifg=#f3f99d
		IndentBlanklineChar                                                                                          { gui = "nocombine", fg = "#3f444a" }, -- IndentBlanklineChar xxx cterm=nocombine gui=nocombine guifg=#3f444a
		IndentBlanklineContextChar                                                                                   { gui = "nocombine", fg = snazzy.yellow }, -- IndentBlanklineContextChar xxx cterm=nocombine gui=nocombine guifg=#f3f99d
		IndentBlanklineContextStart                                                                                  { sp = snazzy.yellow, gui = "underline" }, -- IndentBlanklineContextStart xxx cterm=underline gui=underline guisp=#f3f99d
		IndentBlanklineSpaceChar                                                                                     { gui = "nocombine", fg = "#3f444a" }, -- IndentBlanklineSpaceChar xxx cterm=nocombine gui=nocombine guifg=#3f444a
		IndentBlanklineSpaceCharBlankline                                                                            { gui = "nocombine", fg = "#3f444a" }, -- IndentBlanklineSpaceCharBlankline xxx cterm=nocombine gui=nocombine guifg=#3f444a
		KeyMenuFloatBorder                                                                                           { fg = snazzy.blue }, -- KeyMenuFloatBorder xxx guifg=#57c7ff
		Keyword                                                                                                      { fg = snazzy.magenta }, -- Keyword        xxx guifg=#ff6ac1
		Label                                                                                                        { fg = snazzy.yellow }, -- Label          xxx guifg=#f3f99d
		LeapBackdrop                                                                                                 { sp = "#666666", fg = "#666666" }, -- LeapBackdrop   xxx guifg=#666666 guibg=#282a36 guisp=#666666
		LeapLabelPrimary                                                                                             { gui = "bold", fg = "#ff007c" }, -- LeapBackdrop   xxx guifg=#666666 guibg=#282a36 guisp=#666666
		LeapLabelSecondary                                                                                           { gui = "bold", fg = "#00dfff" }, -- LeapLabelPrimary xxx cterm=bold gui=bold guifg=#ff007c
		FlashBackdrop                                                                                                { sp = "#666666", fg = "#666666" }, -- LeapLabelPrimary xxx cterm=bold gui=bold guifg=#ff007c
		FlashLabel                                                                                                   { gui = "bold", fg = "#ff007c" }, -- LeapLabelSecondary xxx cterm=bold gui=bold guifg=#00dfff
		-- FlashMatch                                                                                                { gui = "bold", fg = "#00dfff" },
		FlashMatch                                                                                                   { fg = snazzy.fg },
		FlashCurrent                                                                                                 { gui = "bold", fg = "#ccff88" },
		LineNr                                                                                                       { fg = "#606580" }, -- LineNr         xxx guifg=#606580
		LineNrAbove                                                                                                  { LineNr }, -- LineNrAbove    xxx links to LineNr
		LineNrBelow                                                                                                  { LineNr }, -- LineNrBelow    xxx links to LineNr
		LspComment                                                                                                   { gui = "italic", fg = snazzy.ui_8 }, -- LspComment     xxx cterm=italic gui=italic guifg=#606580
		LspCodeLens                                                                                                  { fg = snazzy.ui_8, gui = "bold" }, -- LspComment     xxx cterm=italic gui=italic guifg=#606580
		LspDefaultLibrary                                                                                            { gui = "bold", fg = snazzy.yellow }, -- LspDefaultLibrary xxx cterm=bold gui=bold guifg=#f3f99d
		LspDefinition                                                                                                { sp = snazzy.statusline.bg, bg = "#3a3d4d", fg = snazzy.blue }, -- LspDefinition  xxx guifg=#57c7ff guibg=#3a3d4d guisp=#3a3d4d
		LspFloatWinBorder                                                                                            { fg = snazzy.blue }, -- LspFloatWinBorder xxx guifg=#57c7ff
		LspFunction                                                                                                  { gui = "bold", fg = snazzy.blue }, -- LspFunction    xxx cterm=bold gui=bold guifg=#57c7ff
		LspInfoBorder                                                                                                { Label }, -- LspInfoBorder  xxx links to Label
		LspInfoFiletype                                                                                              { Type }, -- LspInfoFiletype xxx links to Type
		LspInfoList                                                                                                  { Function }, -- LspInfoList    xxx links to Function
		LspInfoTip                                                                                                   { Comment }, -- LspInfoTip     xxx links to Comment
		LspInfoTitle                                                                                                 { Title }, -- LspInfoTitle   xxx links to Title
		LspInlayHint                                                                                                 { fg = snazzy.ui_8 }, -- LspInlayHints  xxx guifg=#536991
		LspInlayHints                                                                                                { fg = snazzy.ui_8 }, -- LspInlayHints  xxx guifg=#536991
		LspKeyword                                                                                                   { gui = "bold", fg = snazzy.magenta }, -- LspKeyword     xxx cterm=bold gui=bold guifg=#ff6ac1
		LspMethod                                                                                                    { gui = "bold", fg = snazzy.blue }, -- LspMethod      xxx cterm=bold gui=bold guifg=#57c7ff
		LspNamespace                                                                                                 { gui = "italic", fg = snazzy.blue }, -- LspNamespace   xxx cterm=italic gui=italic guifg=#57c7ff
		LspNumber                                                                                                    { fg = snazzy.purple }, -- LspNumber      xxx guifg=#a39df9
		LspParameter                                                                                                 { fg = snazzy.yellow }, -- LspParameter   xxx guifg=#f3f99d
		LspReferenceRead                                                                                             { sp = snazzy.statusline.bg, bg = "#3a3d4d" }, -- LspReferenceRead xxx guibg=#3a3d4d guisp=#3a3d4d
		LspReferenceText                                                                                             { sp = snazzy.statusline.bg, bg = "#3a3d4d" }, -- LspReferenceText xxx guibg=#3a3d4d guisp=#3a3d4d
		LspReferenceWrite                                                                                            { sp = snazzy.statusline.bg, bg = "#3a3d4d" }, -- LspReferenceWrite xxx guibg=#3a3d4d guisp=#3a3d4d
		LspSignatureActiveParameter                                                                                  { bg = "#636427" }, -- LspSignatureActiveParameter xxx guibg=#636427
		LspVariable                                                                                                  { fg = "#f1f1f0" }, -- LspVariable    xxx guifg=#f1f1f0
		MatchBackground                                                                                              { ColorColumn }, -- MatchBackground xxx links to ColorColumn
		MatchParen                                                                                                   { gui = "bold", fg = snazzy.green }, -- MatchParen     xxx cterm=bold gui=bold guifg=#5af78e
		MatchParenCur                                                                                                { MatchParen }, -- MatchParenCur  xxx links to MatchParen
		MatchWord                                                                                                    { MatchParen }, -- MatchWord      xxx links to MatchParen
		ModeMsg                                                                                                      { sp = "#192224", fg = "#f9f9f9", bg = "#192224", gui = "bold" }, -- ModeMsg        xxx cterm=bold gui=bold guifg=#f9f9f9 guibg=#192224 guisp=#192224
		MoreMsg                                                                                                      { gui = "bold", fg = snazzy.yellow }, -- MoreMsg        xxx cterm=bold gui=bold guifg=#f3f99d
		MsgSeparator                                                                                                 { StatusLine }, -- MsgSeparator   xxx links to StatusLine
		NeotestAdapterName                                                                                           { fg = "#f70067" }, -- NeotestAdapterName xxx ctermfg=9 guifg=#f70067
		NeotestDir                                                                                                   { fg = "#00f1f5" }, -- NeotestDir     xxx ctermfg=14 guifg=#00f1f5
		NeotestExpandMarker                                                                                          { fg = "#8094b4" }, -- NeotestExpandMarker xxx ctermfg=248 guifg=#8094b4
		NeotestFailed                                                                                                { fg = "#f70067" }, -- NeotestFailed  xxx ctermfg=9 guifg=#f70067
		NeotestFile                                                                                                  { fg = "#00f1f5" }, -- NeotestFile    xxx ctermfg=14 guifg=#00f1f5
		NeotestFocused                                                                                               { gui = "bold,underline" }, -- NeotestFocused xxx cterm=bold,underline gui=bold,underline
		NeotestIndent                                                                                                { fg = "#8b8b8b" }, -- NeotestIndent  xxx ctermfg=248 guifg=#8b8b8b
		NeotestMarked                                                                                                { gui = "bold", fg = snazzy.orange }, -- NeotestMarked  xxx ctermfg=130 gui=bold guifg=#f79000
		NeotestNamespace                                                                                             { fg = "#d484ff" }, -- NeotestNamespace xxx ctermfg=13 guifg=#d484ff
		NeotestPassed                                                                                                { fg = snazzy.green }, -- NeotestPassed  xxx ctermfg=10 guifg=#96f291
		NeotestRunning                                                                                               { fg = "#ffec63" }, -- NeotestRunning xxx ctermfg=11 guifg=#ffec63
		NeotestSkipped                                                                                               { fg = "#00f1f5" }, -- NeotestSkipped xxx ctermfg=14 guifg=#00f1f5
		NeotestTarget                                                                                                { fg = "#f70067" }, -- NeotestTarget  xxx ctermfg=9 guifg=#f70067
		NeotestTest                                                                                                  { Normal }, -- NeotestTest    xxx links to Normal
		NeotestUnknown                                                                                               { Normal }, -- NeotestUnknown xxx links to Normal
		NeotestWinSelect                                                                                             { gui = "bold", fg = "#00f1f5" }, -- NeotestWinSelect xxx ctermfg=14 gui=bold guifg=#00f1f5
		NotifierContent                                                                                              { Normal }, -- NotifierContent xxx links to Normal
		NotifierContentDim                                                                                           { Comment }, -- NotifierContentDim xxx links to Comment
		NotifierIcon                                                                                                 { Title }, -- NotifierIcon   xxx links to Title
		NotifierTitle                                                                                                { Title }, -- NotifierTitle  xxx links to Title
		NotifyBackground                                                                                             { bg = snazzy.bg }, -- NotifierTitle  xxx links to Title
		-- NotifyDEBUGBody                                                                                           { Normal }, -- NotifyDEBUGBody xxx links to Normal
		-- NotifyDEBUGBorder                                                                                         { fg=snazzy.cyan, }, -- NotifyDEBUGBorder xxx guifg=#9aedfe
		-- NotifyDEBUGIcon                                                                                           { fg=snazzy.cyan, }, -- NotifyDEBUGIcon xxx guifg=#9aedfe
		-- NotifyDEBUGTitle                                                                                          { fg=snazzy.cyan, }, -- NotifyDEBUGTitle xxx guifg=#9aedfe
		-- NotifyERRORBody                                                                                           { Normal }, -- NotifyERRORBody xxx links to Normal
		-- NotifyERRORBorder                                                                                         { fg=snazzy.red, }, -- NotifyERRORBorder xxx guifg=#ff5c57
		-- NotifyERRORIcon                                                                                           { fg=snazzy.magenta, }, -- NotifyERRORIcon xxx guifg=#ff6ac1
		-- NotifyERRORTitle                                                                                          { fg=snazzy.red, }, -- NotifyERRORTitle xxx guifg=#ff5c57
		-- NotifyINFOBody                                                                                            { Normal }, -- NotifyINFOBody xxx links to Normal
		-- NotifyINFOBorder                                                                                          { fg=snazzy.green, }, -- NotifyINFOBorder xxx guifg=#5af78e
		-- NotifyINFOIcon                                                                                            { fg=snazzy.green, }, -- NotifyINFOIcon xxx guifg=#5af78e
		-- NotifyINFOTitle                                                                                           { fg="#eff0eb", }, -- NotifyINFOTitle xxx guifg=#eff0eb
		-- NotifyLogTime                                                                                             { Comment }, -- NotifyLogTime  xxx links to Comment
		-- NotifyLogTitle                                                                                            { Special }, -- NotifyLogTitle xxx links to Special
		-- NotifyTRACEBody                                                                                           { Normal }, -- NotifyTRACEBody xxx links to Normal
		-- NotifyTRACEBorder                                                                                         { fg=snazzy.purple, }, -- NotifyTRACEBorder xxx guifg=#a39df9
		-- NotifyTRACEIcon                                                                                           { fg=snazzy.purple, }, -- NotifyTRACEIcon xxx guifg=#a39df9
		-- NotifyTRACETitle                                                                                          { fg=snazzy.purple, }, -- NotifyTRACETitle xxx guifg=#a39df9
		-- NotifyWARNBody                                                                                            { Normal }, -- NotifyWARNBody xxx links to Normal
		-- NotifyWARNBorder                                                                                          { fg=snazzy.orange, }, -- NotifyWARNBorder xxx guifg=#ff9f43
		-- NotifyWARNIcon                                                                                            { fg=snazzy.orange, }, -- NotifyWARNIcon xxx guifg=#ff9f43
		-- NotifyWARNTitle                                                                                           { fg=snazzy.orange, }, -- NotifyWARNTitle xxx guifg=#ff9f43
		Number                                                                                                       { fg = snazzy.yellow }, -- Number         xxx guifg=#f3f99d
		NvimArrow                                                                                                    { Delimiter }, -- NvimArrow      xxx links to Delimiter
		NvimAssignment                                                                                               { Operator }, -- NvimAssignment xxx links to Operator
		NvimColon                                                                                                    { Delimiter }, -- NvimColon      xxx links to Delimiter
		NvimComma                                                                                                    { Delimiter }, -- NvimComma      xxx links to Delimiter
		NvimFigureBrace                                                                                              { NvimInternalError }, -- NvimFigureBrace xxx links to NvimInternalError
		NvimIdentifier                                                                                               { Identifier }, -- NvimIdentifier xxx links to Identifier
		NvimInvalid                                                                                                  { Error }, -- NvimInvalid    xxx links to Error
		NvimInvalidSingleQuotedUnknownEscape                                                                         { NvimInternalError }, -- NvimInvalidSingleQuotedUnknownEscape xxx links to NvimInternalError
		NvimInvalidSpacing                                                                                           { ErrorMsg }, -- NvimInvalidSpacing xxx links to ErrorMsg
		NvimNumber                                                                                                   { Number }, -- NvimNumber     xxx links to Number
		NvimNumberPrefix                                                                                             { Type }, -- NvimNumberPrefix xxx links to Type
		NvimOperator                                                                                                 { Operator }, -- NvimOperator   xxx links to Operator
		NvimOptionSigil                                                                                              { Type }, -- NvimOptionSigil xxx links to Type
		NvimParenthesis                                                                                              { Delimiter }, -- NvimParenthesis xxx links to Delimiter
		NvimRegister                                                                                                 { SpecialChar }, -- NvimRegister   xxx links to SpecialChar
		NvimSingleQuotedUnknownEscape                                                                                { NvimInternalError }, -- NvimSingleQuotedUnknownEscape xxx links to NvimInternalError
		NvimSpacing                                                                                                  { Normal }, -- NvimSpacing    xxx links to Normal
		NvimString                                                                                                   { String }, -- NvimString     xxx links to String
		NvimStringSpecial                                                                                            { SpecialChar }, -- NvimStringSpecial xxx links to SpecialChar
		NvimSurroundHighlight                                                                                        { Visual }, -- NvimSurroundHighlight xxx links to Visual
		NvimTreeBookmark                                                                                             { fg = snazzy.green }, -- NvimTreeBookmark xxx guifg=#5af78e
		NvimTreeCursorColumn                                                                                         { CursorColumn }, -- NvimTreeCursorColumn xxx links to CursorColumn
		NvimTreeCursorLine                                                                                           { CursorLine }, -- NvimTreeCursorLine xxx links to CursorLine
		NvimTreeEmptyFolderName                                                                                      { Directory }, -- NvimTreeEmptyFolderName xxx links to Directory
		NvimTreeEndOfBuffer                                                                                          { EndOfBuffer }, -- NvimTreeEndOfBuffer xxx links to EndOfBuffer
		NvimTreeExecFile                                                                                             { gui = "bold", fg = snazzy.green }, -- NvimTreeExecFile xxx gui=bold guifg=#5af78e
		NvimTreeGitDeleted                                                                                           { fg = snazzy.red }, -- NvimTreeGitDeleted xxx guifg=#ff5c57
		NvimTreeGitDirty                                                                                             { fg = snazzy.yellow }, -- NvimTreeGitDirty xxx guifg=#f3f99d
		NvimTreeGitMerge                                                                                             { fg = snazzy.yellow }, -- NvimTreeGitMerge xxx guifg=#f3f99d
		NvimTreeGitNew                                                                                               { fg = snazzy.green }, -- NvimTreeGitNew xxx guifg=#5af78e
		NvimTreeGitRenamed                                                                                           { fg = snazzy.magenta }, -- NvimTreeGitRenamed xxx guifg=#ff6ac1
		NvimTreeGitStaged                                                                                            { fg = snazzy.green }, -- NvimTreeGitStaged xxx guifg=#5af78e
		NvimTreeFileDeleted                                                                                          { NvimTreeGitDeleted }, -- NvimTreeFileDeleted xxx links to NvimTreeGitDeleted
		NvimTreeFileDirty                                                                                            { NvimTreeGitDirty }, -- NvimTreeFileDirty xxx links to NvimTreeGitDirty
		NvimTreeFileMerge                                                                                            { NvimTreeGitMerge }, -- NvimTreeFileMerge xxx links to NvimTreeGitMerge
		NvimTreeFileNew                                                                                              { NvimTreeGitNew }, -- NvimTreeFileNew xxx links to NvimTreeGitNew
		NvimTreeFileRenamed                                                                                          { NvimTreeGitRenamed }, -- NvimTreeFileRenamed xxx links to NvimTreeGitRenamed
		NvimTreeFileStaged                                                                                           { NvimTreeGitStaged }, -- NvimTreeFileStaged xxx links to NvimTreeGitStaged
		NvimTreeFolderIcon                                                                                           { fg = "#8094b4" }, -- NvimTreeFolderIcon xxx guifg=#8094b4
		NvimTreeFolderName                                                                                           { fg = snazzy.blue }, -- NvimTreeFolderName xxx guifg=#57c7ff
		NvimTreeGitIgnored                                                                                           { Comment }, -- NvimTreeGitIgnored xxx links to Comment
		NvimTreeImageFile                                                                                            { gui = "bold", fg = snazzy.magenta }, -- NvimTreeImageFile xxx gui=bold guifg=#ff6ac1
		NvimTreeIndentMarker                                                                                         { fg = "#8094b4" }, -- NvimTreeIndentMarker xxx guifg=#8094b4
		NvimTreeLiveFilterPrefix                                                                                     { gui = "bold", fg = snazzy.magenta }, -- NvimTreeLiveFilterPrefix xxx gui=bold guifg=#ff6ac1
		NvimTreeLiveFilterValue                                                                                      { gui = "bold" }, -- NvimTreeLiveFilterValue xxx gui=bold
		NvimTreeLspDiagnosticsError                                                                                  { DiagnosticError }, -- NvimTreeLspDiagnosticsError xxx links to DiagnosticError
		NvimTreeLspDiagnosticsHint                                                                                   { DiagnosticHint }, -- NvimTreeLspDiagnosticsHint xxx links to DiagnosticHint
		NvimTreeLspDiagnosticsInformation                                                                            { DiagnosticInfo }, -- NvimTreeLspDiagnosticsInformation xxx links to DiagnosticInfo
		NvimTreeLspDiagnosticsWarning                                                                                { DiagnosticWarn }, -- NvimTreeLspDiagnosticsWarning xxx links to DiagnosticWarn
		NvimTreeNormal                                                                                               { Normal }, -- NvimTreeNormal xxx links to Normal
		NvimTreeOpenedFile                                                                                           { gui = "bold", fg = snazzy.green }, -- NvimTreeOpenedFile xxx gui=bold guifg=#5af78e
		NvimTreeOpenedFolderName                                                                                     { Directory }, -- NvimTreeOpenedFolderName xxx links to Directory
		NvimTreePopup                                                                                                { Normal }, -- NvimTreePopup  xxx links to Normal
		NvimTreeRootFolder                                                                                           { fg = snazzy.yellow }, -- NvimTreeRootFolder xxx guifg=#f3f99d
		NvimTreeSpecialFile                                                                                          { fg = "#eff0eb" }, -- NvimTreeSpecialFile xxx guifg=#eff0eb
		NvimTreeStatusLine                                                                                           { StatusLine }, -- NvimTreeStatusLine xxx links to StatusLine
		NvimTreeStatusLineNC                                                                                         { StatusLineNC }, -- NvimTreeStatusLineNC xxx links to StatusLineNC
		NvimTreeSymlink                                                                                              { gui = "bold", fg = snazzy.cyan }, -- NvimTreeSymlink xxx gui=bold guifg=#9aedfe
		NvimTreeVertSplit                                                                                            { VertSplit }, -- NvimTreeVertSplit xxx links to VertSplit
		NvimTreeWindowPicker                                                                                         { bg = "#4493c8", gui = "bold", fg = "#ededed" }, -- NvimTreeWindowPicker xxx gui=bold guifg=#ededed guibg=#4493c8
		DiffviewFolderSign                                                                                           { PreProc }, -- DiffviewFolderSign xxx links to PreProc
		Question                                                                                                     { fg = snazzy.yellow }, -- Question       xxx guifg=#f3f99d
		QuickFixLine                                                                                                 { gui = "bold", fg = snazzy.magenta }, -- QuickFixLine   xxx cterm=bold gui=bold guifg=#ff6ac1
		RedrawDebugClear                                                                                             { bg = "yellow" }, -- RedrawDebugClear xxx ctermbg=11 guibg=Yellow
		RedrawDebugComposed                                                                                          { bg = "green" }, -- RedrawDebugComposed xxx ctermbg=10 guibg=Green
		RedrawDebugNormal                                                                                            { gui = "reverse" }, -- RedrawDebugNormal xxx cterm=reverse gui=reverse
		RedrawDebugRecompose                                                                                         { bg = snazzy.red, fg = "#f1f1f0" }, -- RedrawDebugRecompose xxx guifg=#f1f1f0 guibg=#ff5c57
		Repeat                                                                                                       { fg = snazzy.green }, -- Repeat         xxx guifg=#5af78e
		STS_highlight                                                                                                { fg = "#00f1f5" }, -- STS_highlight  xxx guifg=#00f1f5
		ScrollView                                                                                                   { Visual }, -- ScrollView     xxx links to Visual
		SearchSV                                                                                                     { fg = snazzy.yellow }, -- SearchSV       xxx cterm= gui= guifg=#f3f99d
		-- SignColumn                                                                                                { bg = "#282a36" }, -- SignColumn     xxx guibg=#282a36
		SignColumn                                                                                                   { bg = nil }, -- SignColumn     xxx guibg=#282a36
		SignifySignAdd                                                                                               { fg = snazzy.green }, -- SignifySignAdd xxx guifg=#5af78e
		SignifySignChange                                                                                            { fg = snazzy.blue }, -- SignifySignChange xxx guifg=#57c7ff
		SignifySignDelete                                                                                            { fg = snazzy.red }, -- SignifySignDelete xxx guifg=#ff5c57
		SnapBorder                                                                                                   { fg = snazzy.blue }, -- SnapBorder     xxx guifg=#57c7ff
		SnapPosition                                                                                                 { gui = "bold", fg = snazzy.yellow }, -- SnapPosition   xxx cterm=bold gui=bold guifg=#f3f99d
		SnapPrompt                                                                                                   { fg = snazzy.magenta }, -- SnapPrompt     xxx guifg=#ff6ac1
		SnapSelect                                                                                                   { sp = snazzy.statusline.bg, bg = "#3a3d4d" }, -- SnapSelect     xxx guibg=#3a3d4d guisp=#3a3d4d
		SpellBad                                                                                                     { sp = snazzy.red, gui = "underline" }, -- SpellBad       xxx cterm=underline gui=underline guisp=#ff5c57
		SpellCap                                                                                                     { gui = "underline", fg = snazzy.blue }, -- SpellCap       xxx cterm=underline gui=underline guifg=#57c7ff
		SpellLocal                                                                                                   { gui = "underline", fg = snazzy.cyan }, -- SpellLocal     xxx cterm=underline gui=underline guifg=#9aedfe
		SpellRare                                                                                                    { gui = "underline", fg = snazzy.magenta }, -- SpellRare      xxx cterm=underline gui=underline guifg=#ff6ac1
		TabLine                                                                                                      { bg = snazzy.ui_7, gui = "underline" }, -- TabLine        xxx cterm=underline ctermfg=15 ctermbg=242 gui=underline guibg=DarkGrey
		TabLineFill                                                                                                  { sp = snazzy.statusline.bg, fg = "#192224", bg = "#3a3d4d", gui = "bold" }, -- TabLineFill    xxx cterm=bold gui=bold guifg=#192224 guibg=#3a3d4d guisp=#3a3d4d
		TabLineSel                                                                                                   { sp = "#282a36", fg = "#eff0eb", bg = "#282a36", gui = "bold" }, -- TabLineSel     xxx cterm=bold gui=bold guifg=#eff0eb guibg=#282a36 guisp=#282a36
		Tag                                                                                                          { fg = snazzy.yellow }, -- Tag            xxx guifg=#f3f99d
		TelescopeBorder                                                                                              { bg = "#282a36", fg = snazzy.blue }, -- TelescopeBorder xxx guifg=#57c7ff guibg=#282a36
		TelescopeMatching                                                                                            { gui = "bold", fg = snazzy.green }, -- TelescopeMatching xxx cterm=bold gui=bold guifg=#5af78e
		TelescopeMultiIcon                                                                                           { Identifier }, -- TelescopeMultiIcon xxx links to Identifier
		TelescopeMultiSelection                                                                                      { gui = "bold", fg = snazzy.red }, -- TelescopeMultiSelection xxx cterm=bold gui=bold guifg=#ff5c57
		TelescopeNormal                                                                                              { bg = "#282a36", fg = "#eff0eb" }, -- TelescopeNormal xxx guifg=#eff0eb guibg=#282a36
		TelescopePreviewBlock                                                                                        { Constant }, -- TelescopePreviewBlock xxx links to Constant
		TelescopePreviewBorder                                                                                       { bg = "#282a36", fg = snazzy.blue }, -- TelescopePreviewBorder xxx guifg=#57c7ff guibg=#282a36
		TelescopePreviewCharDev                                                                                      { Constant }, -- TelescopePreviewCharDev xxx links to Constant
		TelescopePreviewDate                                                                                         { Directory }, -- TelescopePreviewDate xxx links to Directory
		TelescopePreviewDirectory                                                                                    { Directory }, -- TelescopePreviewDirectory xxx links to Directory
		TelescopePreviewExecute                                                                                      { String }, -- TelescopePreviewExecute xxx links to String
		TelescopePreviewGroup                                                                                        { Constant }, -- TelescopePreviewGroup xxx links to Constant
		TelescopePreviewHyphen                                                                                       { NonText }, -- TelescopePreviewHyphen xxx links to NonText
		TelescopePreviewLine                                                                                         { Visual }, -- TelescopePreviewLine xxx links to Visual
		TelescopePreviewLink                                                                                         { Special }, -- TelescopePreviewLink xxx links to Special
		TelescopePreviewMatch                                                                                        { Search }, -- TelescopePreviewMatch xxx links to Search
		TelescopePreviewNormal                                                                                       { TelescopeNormal }, -- TelescopePreviewNormal xxx links to TelescopeNormal
		TelescopePreviewPipe                                                                                         { Constant }, -- TelescopePreviewPipe xxx links to Constant
		TelescopePreviewRead                                                                                         { Constant }, -- TelescopePreviewRead xxx links to Constant
		TelescopePreviewSize                                                                                         { String }, -- TelescopePreviewSize xxx links to String
		TelescopePreviewSocket                                                                                       { Statement }, -- TelescopePreviewSocket xxx links to Statement
		TelescopePreviewSticky                                                                                       { Keyword }, -- TelescopePreviewSticky xxx links to Keyword
		TelescopePreviewUser                                                                                         { Constant }, -- TelescopePreviewUser xxx links to Constant
		TelescopePreviewWrite                                                                                        { Statement }, -- TelescopePreviewWrite xxx links to Statement
		TelescopePromptBorder                                                                                        { bg = "#282a36", fg = snazzy.blue }, -- TelescopePromptBorder xxx guifg=#57c7ff guibg=#282a36
		TelescopePromptCounter                                                                                       { NonText }, -- TelescopePromptCounter xxx links to NonText
		TelescopePromptNormal                                                                                        { TelescopeNormal }, -- TelescopePromptNormal xxx links to TelescopeNormal
		TelescopePromptPrefix                                                                                        { gui = "bold", fg = snazzy.magenta }, -- TelescopePromptPrefix xxx cterm=bold gui=bold guifg=#ff6ac1
		TelescopeResultsBorder                                                                                       { bg = "#282a36", fg = snazzy.blue }, -- TelescopeResultsBorder xxx guifg=#57c7ff guibg=#282a36
		TelescopeResultsClass                                                                                        { Function }, -- TelescopeResultsClass xxx links to Function
		TelescopeResultsComment                                                                                      { Comment }, -- TelescopeResultsComment xxx links to Comment
		TelescopeResultsConstant                                                                                     { Constant }, -- TelescopeResultsConstant xxx links to Constant
		TelescopeResultsDiffAdd                                                                                      { DiffAdd }, -- TelescopeResultsDiffAdd xxx links to DiffAdd
		TelescopeResultsDiffChange                                                                                   { DiffChange }, -- TelescopeResultsDiffChange xxx links to DiffChange
		TelescopeResultsDiffDelete                                                                                   { DiffDelete }, -- TelescopeResultsDiffDelete xxx links to DiffDelete
		TelescopeResultsDiffUntracked                                                                                { NonText }, -- TelescopeResultsDiffUntracked xxx links to NonText
		TelescopeResultsField                                                                                        { Function }, -- TelescopeResultsField xxx links to Function
		TelescopeResultsFileIcon                                                                                     { Normal }, -- TelescopeResultsFileIcon xxx links to Normal
		TelescopeResultsFunction                                                                                     { Function }, -- TelescopeResultsFunction xxx links to Function
		TelescopeResultsIdentifier                                                                                   { Identifier }, -- TelescopeResultsIdentifier xxx links to Identifier
		TelescopeResultsLineNr                                                                                       { LineNr }, -- TelescopeResultsLineNr xxx links to LineNr
		TelescopeResultsNormal                                                                                       { TelescopeNormal }, -- TelescopeResultsNormal xxx links to TelescopeNormal
		TelescopeResultsNumber                                                                                       { Number }, -- TelescopeResultsNumber xxx links to Number
		TelescopeResultsOperator                                                                                     { Operator }, -- TelescopeResultsOperator xxx links to Operator
		TelescopeResultsSpecialComment                                                                               { SpecialComment }, -- TelescopeResultsSpecialComment xxx links to SpecialComment
		TelescopeResultsVariable                                                                                     { SpecialChar }, -- TelescopeResultsVariable xxx links to SpecialChar
		TelescopeSelection                                                                                           { gui = "bold", bg = snazzy.cursorline }, -- TelescopeSelection xxx cterm=bold gui=bold
		TelescopeSelectionCaret                                                                                      { gui = "bold", fg = snazzy.magenta, bg = snazzy.cursorline }, -- TelescopeSelectionCaret xxx cterm=bold gui=bold guifg=#ff6ac1
		TelescopeTitle                                                                                               { TelescopeBorder }, -- TelescopeTitle xxx links to TelescopeBorder
		TodoBgFIX                                                                                                    { bg = snazzy.red, gui = "bold", fg = "#282a36" }, -- TodoBgFIX      xxx gui=bold guifg=#282a36 guibg=#ff5c57
		TodoBgHACK                                                                                                   { bg = snazzy.yellow, gui = "bold", fg = "#282a36" }, -- TodoBgHACK     xxx gui=bold guifg=#282a36 guibg=#f3f99d
		TodoBgNOTE                                                                                                   { bg = snazzy.green, gui = "bold", fg = "#282a36" }, -- TodoBgNOTE     xxx gui=bold guifg=#282a36 guibg=#5af78e
		TodoBgPERF                                                                                                   { bg = snazzy.cyan, gui = "bold", fg = "#282a36" }, -- TodoBgPERF     xxx gui=bold guifg=#282a36 guibg=#9aedfe
		TodoBgTODO                                                                                                   { bg = snazzy.cyan, gui = "bold", fg = "#282a36" }, -- TodoBgTODO     xxx gui=bold guifg=#282a36 guibg=#9aedfe
		TodoBgWARN                                                                                                   { bg = snazzy.yellow, gui = "bold", fg = "#282a36" }, -- TodoBgWARN     xxx gui=bold guifg=#282a36 guibg=#f3f99d
		TodoFgFIX                                                                                                    { fg = snazzy.red }, -- TodoFgFIX      xxx guifg=#ff5c57
		TodoFgHACK                                                                                                   { fg = snazzy.yellow }, -- TodoFgHACK     xxx guifg=#f3f99d
		TodoFgNOTE                                                                                                   { fg = snazzy.green }, -- TodoFgNOTE     xxx guifg=#5af78e
		TodoFgPERF                                                                                                   { fg = snazzy.cyan }, -- TodoFgPERF     xxx guifg=#9aedfe
		TodoFgTODO                                                                                                   { fg = snazzy.cyan }, -- TodoFgTODO     xxx guifg=#9aedfe
		TodoFgWARN                                                                                                   { fg = snazzy.yellow }, -- TodoFgWARN     xxx guifg=#f3f99d
		TodoSignFIX                                                                                                  { fg = snazzy.red }, -- TodoSignFIX    xxx guifg=#ff5c57 guibg=#282a36
		TodoSignHACK                                                                                                 { fg = snazzy.yellow }, -- TodoSignHACK   xxx guifg=#f3f99d guibg=#282a36
		TodoSignNOTE                                                                                                 { fg = snazzy.green }, -- TodoSignNOTE   xxx guifg=#5af78e guibg=#282a36
		TodoSignPERF                                                                                                 {  fg = snazzy.cyan }, -- TodoSignPERF   xxx guifg=#9aedfe guibg=#282a36
		TodoSignTODO                                                                                                 {  fg = snazzy.cyan }, -- TodoSignTODO   xxx guifg=#9aedfe guibg=#282a36
		TodoSignWARN                                                                                                 { bg = "#282a36", fg = snazzy.yellow }, -- TodoSignWARN   xxx guifg=#f3f99d guibg=#282a36
		TreesitterContext                                                                                            { fg = snazzy.fg, bg = snazzy.statusline.bg }, -- TreesitterContext xxx links to NormalFloat
		TreesitterContextLineNumber                                                                                  { fg = snazzy.blue }, -- TreesitterContextLineNumber xxx guifg=#57c7ff
		UfoFoldedBg                                                                                                  { bg = "#282a36" }, -- UfoFoldedBg    xxx guibg=#282a36
		UfoFoldedEllipsis                                                                                            { Comment }, -- UfoFoldedEllipsis xxx links to Comment
		UfoFoldedFg                                                                                                  { fg = snazzy.blue }, -- UfoFoldedFg    xxx guifg=#57c7ff
		UfoPreviewSbar                                                                                               { bg = snazzy.blue }, -- UfoPreviewSbar xxx guibg=#57c7ff
		UfoPreviewThumb                                                                                              { fg = snazzy.blue }, -- UfoPreviewThumb xxx guifg=#57c7ff
		dbui_tables                                                                                                  { fg = snazzy.blue },
		debugBreakpoint                                                                                              { bg = snazzy.red, fg = "#282a36" },
		gitcommitArrow                                                                                               { fg = "#686868" }, -- gitcommitArrow xxx guifg=#686868
		gitcommitDiscarded                                                                                           { fg = "#686868" }, -- gitcommitDiscarded xxx guifg=#686868
		gitcommitFile                                                                                                { fg = snazzy.green }, -- gitcommitFile  xxx guifg=#5af78e
		gitcommitOnBranch                                                                                            { fg = "#686868" }, -- gitcommitOnBranch xxx guifg=#686868
		gitcommitSelected                                                                                            { fg = "#686868" }, -- gitcommitSelected xxx guifg=#686868
		gitcommitSummary                                                                                             { fg = snazzy.red }, -- gitcommitSummary xxx guifg=#ff5c57
		gitcommitUnmerged                                                                                            { fg = "#686868" }, -- gitcommitUnmerged xxx guifg=#686868
		gitcommitUntracked                                                                                           { fg = "#686868" }, -- gitcommitUntracked xxx guifg=#686868
		iCursor                                                                                                      { gui = "reverse" }, -- iCursor        xxx cterm=reverse gui=reverse
		lCursor                                                                                                      { gui = "reverse" }, -- lCursor        xxx cterm=reverse gui=reverse
		luaBraceError                                                                                                { Error }, -- luaBraceError  xxx links to Error
		luaComment                                                                                                   { Comment }, -- luaComment     xxx links to Comment
		luaCond                                                                                                      { Conditional }, -- luaCond        xxx links to Conditional
		luaConstant                                                                                                  { Constant }, -- luaConstant    xxx links to Constant
		luaElse                                                                                                      { Conditional }, -- luaElse        xxx links to Conditional
		luaError                                                                                                     { Error }, -- luaError       xxx links to Error
		luaFor                                                                                                       { Repeat }, -- luaFor         xxx links to Repeat
		luaFunc                                                                                                      { Identifier }, -- luaFunc        xxx links to Identifier
		luaFunction                                                                                                  { Function }, -- luaFunction    xxx links to Function
		luaIn                                                                                                        { Operator }, -- luaIn          xxx links to Operator
		luaLabel                                                                                                     { Label }, -- luaLabel       xxx links to Label
		luaNumber                                                                                                    { Number }, -- luaNumber      xxx links to Number
		luaOperator                                                                                                  { Operator }, -- luaOperator    xxx links to Operator
		luaParenError                                                                                                { Error }, -- luaParenError  xxx links to Error
		luaRepeat                                                                                                    { Repeat }, -- luaRepeat      xxx links to Repeat
		luaSpecial                                                                                                   { SpecialChar }, -- luaSpecial     xxx links to SpecialChar
		luaStatement                                                                                                 { Statement }, -- luaStatement   xxx links to Statement
		luaString                                                                                                    { String }, -- luaString      xxx links to String
		luaString2                                                                                                   { String }, -- luaString2     xxx links to String
		luaTSConstructor                                                                                             { gui = "bold", fg = "#f1f1f0" }, -- luaTSConstructor xxx cterm=bold gui=bold guifg=#f1f1f0
		luaTSPunctBracket                                                                                            { gui = "bold", fg = "#f1f1f0" }, -- luaTSPunctBracket xxx cterm=bold gui=bold guifg=#f1f1f0
		luaTable                                                                                                     { Structure }, -- luaTable       xxx links to Structure
		luaTodo                                                                                                      { Todo }, -- luaTodo        xxx links to Todo
		lualine_a_command                                                                                            { bg = snazzy.yellow, gui = "bold", fg = "#282a36" }, -- lualine_a_command xxx gui=bold guifg=#282a36 guibg=#f3f99d
		lualine_a_inactive                                                                                           { bg = snazzy.statusline.bg, gui = "bold" }, -- lualine_a_inactive xxx gui=bold guibg=#3a3d4d
		lualine_a_insert                                                                                             { bg = snazzy.green, gui = "bold", fg = "#282a36" }, -- lualine_a_insert xxx gui=bold guifg=#282a36 guibg=#5af78e
		lualine_a_normal                                                                                             { bg = snazzy.blue, gui = "bold", fg = "#282a36" }, -- lualine_a_normal xxx gui=bold guifg=#282a36 guibg=#57c7ff
		lualine_a_replace                                                                                            { bg = snazzy.red, gui = "bold", fg = "#282a36" }, -- lualine_a_replace xxx gui=bold guifg=#282a36 guibg=#ff5c57
		lualine_a_visual                                                                                             { bg = snazzy.magenta, gui = "bold", fg = "#282a36" }, -- lualine_a_visual xxx gui=bold guifg=#282a36 guibg=#ff6ac1
		lualine_b_branch                                                                                             { bg = "#f1f1f0", fg = snazzy.statusline.bg }, -- lualine_b_branch xxx guifg=#3a3d4d guibg=#f1f1f0
		lualine_b_command                                                                                            { bg = "#b1b1b1", fg = "#f1f1f0" }, -- lualine_b_command xxx guifg=#f1f1f0 guibg=#b1b1b1
		lualine_b_inactive                                                                                           { bg = "#b1b1b1" }, -- lualine_b_inactive xxx guibg=#b1b1b1
		lualine_b_insert                                                                                             { bg = "#b1b1b1", fg = "#f1f1f0" }, -- lualine_b_insert xxx guifg=#f1f1f0 guibg=#b1b1b1
		lualine_b_normal                                                                                             { bg = "#b1b1b1", fg = "#f1f1f0" }, -- lualine_b_normal xxx guifg=#f1f1f0 guibg=#b1b1b1
		lualine_b_replace                                                                                            { bg = "#b1b1b1", fg = "#f1f1f0" }, -- lualine_b_replace xxx guifg=#f1f1f0 guibg=#b1b1b1
		lualine_b_visual                                                                                             { bg = "#b1b1b1", fg = "#f1f1f0" }, -- lualine_b_visual xxx guifg=#f1f1f0 guibg=#b1b1b1
		lualine_c_command                                                                                            { bg = snazzy.statusline.bg, fg = "#b1b1b1" }, -- lualine_c_command xxx guifg=#b1b1b1 guibg=#3a3d4d
		lualine_c_diagnostics_error                                                                                  { bg = snazzy.statusline.bg, fg = snazzy.red }, -- lualine_c_diagnostics_error xxx links to DiagnosticError
		lualine_c_diagnostics_hint                                                                                   { bg = snazzy.statusline.bg, fg = snazzy.cyan }, -- lualine_c_diagnostics_hint xxx links to DiagnosticHint
		lualine_c_diagnostics_info                                                                                   { bg = snazzy.statusline.bg, fg = snazzy.blue }, -- lualine_c_diagnostics_info xxx links to DiagnosticInfo
		lualine_c_diagnostics_warn                                                                                   { bg = snazzy.statusline.bg, fg = snazzy.orange }, -- lualine_c_diagnostics_warn xxx links to DiagnosticWarn
		lualine_c_inactive                                                                                           { bg = snazzy.statusline.bg, fg = snazzy.ui_9 }, -- lualine_c_inactive xxx guifg=#3a3d4d guibg=#3a3d4d
		lualine_c_insert                                                                                             { bg = snazzy.statusline.bg, fg = "#b1b1b1" }, -- lualine_c_insert xxx guifg=#b1b1b1 guibg=#3a3d4d
		lualine_c_normal                                                                                             { bg = snazzy.statusline.bg, fg = "#b1b1b1" }, -- lualine_c_normal xxx guifg=#b1b1b1 guibg=#3a3d4d
		lualine_c_replace                                                                                            { bg = snazzy.statusline.bg, fg = "#b1b1b1" }, -- lualine_c_replace xxx guifg=#b1b1b1 guibg=#3a3d4d
		lualine_c_visual                                                                                             { bg = snazzy.statusline.bg, fg = "#b1b1b1" }, -- lualine_c_visual xxx guifg=#b1b1b1 guibg=#3a3d4d
		lualine_transitional_lualine_a_command_to_StatusLine                                                         { bg = snazzy.statusline.bg, fg = snazzy.yellow }, -- lualine_transitional_lualine_a_command_to_StatusLine xxx guifg=#f3f99d guibg=#3a3d4d
		lualine_transitional_lualine_a_insert_to_StatusLine                                                          { bg = snazzy.statusline.bg, fg = snazzy.green }, -- lualine_transitional_lualine_a_insert_to_StatusLine xxx guifg=#5af78e guibg=#3a3d4d
		lualine_transitional_lualine_a_normal_to_StatusLine                                                          { bg = snazzy.statusline.bg, fg = snazzy.blue }, -- lualine_transitional_lualine_a_normal_to_StatusLine xxx guifg=#57c7ff guibg=#3a3d4d
		lualine_transitional_lualine_a_normal_to_lualine_c_normal                                                    { bg = snazzy.statusline.bg, fg = snazzy.blue }, -- lualine_transitional_lualine_a_normal_to_lualine_c_normal xxx guifg=#57c7ff guibg=#3a3d4d
		lualine_transitional_lualine_a_visual_to_StatusLine                                                          { bg = snazzy.statusline.bg, fg = snazzy.magenta }, -- lualine_transitional_lualine_a_visual_to_StatusLine xxx guifg=#ff6ac1 guibg=#3a3d4d
		lualine_transitional_lualine_b_branch_to_lualine_c_command                                                   { bg = snazzy.statusline.bg, fg = "#f1f1f0" }, -- lualine_transitional_lualine_b_branch_to_lualine_c_command xxx guifg=#f1f1f0 guibg=#3a3d4d
		lualine_transitional_lualine_b_branch_to_lualine_c_diagnostics_error                                         { fg = "#f1f1f0" }, -- lualine_transitional_lualine_b_branch_to_lualine_c_diagnostics_error xxx guifg=#f1f1f0
		lualine_transitional_lualine_b_branch_to_lualine_c_insert                                                    { bg = snazzy.statusline.bg, fg = "#f1f1f0" }, -- lualine_transitional_lualine_b_branch_to_lualine_c_insert xxx guifg=#f1f1f0 guibg=#3a3d4d
		lualine_transitional_lualine_b_branch_to_lualine_c_normal                                                    { bg = snazzy.statusline.bg, fg = "#f1f1f0" }, -- lualine_transitional_lualine_b_branch_to_lualine_c_normal xxx guifg=#f1f1f0 guibg=#3a3d4d
		lualine_x_filetype_DevIconDefault_command                                                                    { bg = snazzy.statusline.bg, fg = "#6d8086" }, -- lualine_x_filetype_DevIconDefault_command xxx guifg=#6d8086 guibg=#3a3d4d
		lualine_x_filetype_DevIconDefault_inactive                                                                   { bg = snazzy.statusline.bg, fg = "#6d8086" }, -- lualine_x_filetype_DevIconDefault_inactive xxx guifg=#6d8086 guibg=#3a3d4d
		lualine_x_filetype_DevIconDefault_insert                                                                     { bg = snazzy.statusline.bg, fg = "#6d8086" }, -- lualine_x_filetype_DevIconDefault_insert xxx guifg=#6d8086 guibg=#3a3d4d
		lualine_x_filetype_DevIconDefault_normal                                                                     { bg = snazzy.statusline.bg, fg = "#6d8086" }, -- lualine_x_filetype_DevIconDefault_normal xxx guifg=#6d8086 guibg=#3a3d4d
		lualine_x_filetype_DevIconDefault_replace                                                                    { bg = snazzy.statusline.bg, fg = "#6d8086" }, -- lualine_x_filetype_DevIconDefault_replace xxx guifg=#6d8086 guibg=#3a3d4d
		lualine_x_filetype_DevIconDefault_terminal                                                                   { bg = snazzy.statusline.bg, fg = "#6d8086" }, -- lualine_x_filetype_DevIconDefault_terminal xxx guifg=#6d8086 guibg=#3a3d4d
		lualine_x_filetype_DevIconDefault_visual                                                                     { bg = snazzy.statusline.bg, fg = "#6d8086" }, -- lualine_x_filetype_DevIconDefault_visual xxx guifg=#6d8086 guibg=#3a3d4d
		lualine_x_filetype_DevIconLua_command                                                                        { bg = snazzy.statusline.bg, fg = snazzy.blue }, -- lualine_x_filetype_DevIconLua_command xxx guifg=#57c7ff guibg=#3a3d4d
		lualine_x_filetype_DevIconLua_inactive                                                                       { bg = snazzy.statusline.bg, fg = snazzy.blue }, -- lualine_x_filetype_DevIconLua_inactive xxx guifg=#57c7ff guibg=#3a3d4d
		lualine_x_filetype_DevIconLua_insert                                                                         { bg = snazzy.statusline.bg, fg = snazzy.blue }, -- lualine_x_filetype_DevIconLua_insert xxx guifg=#57c7ff guibg=#3a3d4d
		lualine_x_filetype_DevIconLua_normal                                                                         { bg = snazzy.statusline.bg, fg = snazzy.blue }, -- lualine_x_filetype_DevIconLua_normal xxx guifg=#57c7ff guibg=#3a3d4d
		lualine_x_filetype_DevIconLua_replace                                                                        { bg = snazzy.statusline.bg, fg = snazzy.blue }, -- lualine_x_filetype_DevIconLua_replace xxx guifg=#57c7ff guibg=#3a3d4d
		lualine_x_filetype_DevIconLua_terminal                                                                       { bg = snazzy.statusline.bg, fg = snazzy.blue }, -- lualine_x_filetype_DevIconLua_terminal xxx guifg=#57c7ff guibg=#3a3d4d
		lualine_x_filetype_DevIconLua_visual                                                                         { bg = snazzy.statusline.bg, fg = snazzy.blue }, -- lualine_x_filetype_DevIconLua_visual xxx guifg=#57c7ff guibg=#3a3d4d
		vCursor                                                                                                      { sp = "#f9f9ff", bg = "#f9f9ff", fg = "#192224" }, -- vCursor        xxx guifg=#192224 guibg=#f9f9ff guisp=#f9f9ff
		vimCommand                                                                                                   { fg = snazzy.blue }, -- vimCommand     xxx guifg=#57c7ff
		vimCommentTitle                                                                                              { gui = "bold", fg = "#686868" }, -- vimCommentTitle xxx cterm=bold gui=bold guifg=#686868
		vimFuncName                                                                                                  { gui = "bold", fg = snazzy.yellow }, -- vimFuncName    xxx cterm=bold gui=bold guifg=#f3f99d
		vimFunction                                                                                                  { gui = "bold", fg = snazzy.magenta }, -- vimFunction    xxx cterm=bold gui=bold guifg=#ff6ac1
		vimIsCommand                                                                                                 { fg = "#eff0eb" }, -- vimIsCommand   xxx guifg=#eff0eb
		vimLet                                                                                                       { fg = snazzy.yellow }, -- vimLet         xxx guifg=#f3f99d
		vimNotFunc                                                                                                   { gui = "bold", fg = "#686868" }, -- vimNotFunc     xxx cterm=bold gui=bold guifg=#686868
		vimUserFunc                                                                                                  { gui = "bold", fg = snazzy.yellow }, -- vimUserFunc    xxx cterm=bold gui=bold guifg=#f3f99d
		vimVar                                                                                                       { fg = snazzy.cyan }, -- vimVar         xxx guifg=#9aedfe
		NavicIconsDefault                                                                                            { fg = snazzy.fg, bg = snazzy.statusline.bg },
		NavicIconsFile                                                                                               { fg = snazzy.purple, bg = snazzy.statusline.bg },
		NavicIconsFunction                                                                                           { fg = snazzy.magenta, bg = snazzy.statusline.bg },
		NavicIconsMethod                                                                                             { fg = snazzy.magenta, bg = snazzy.statusline.bg },
		NavicText                                                                                                    { fg = snazzy.fg, bg = snazzy.statusline.bg },
		NavicSeparator                                                                                               { fg = snazzy.fg, bg = snazzy.statusline.bg },
		NavicIconsModule                                                                                             { fg = snazzy.fg, bg = snazzy.statusline.bg },
		NavicIconsNamespace                                                                                          { fg = snazzy.fg, bg = snazzy.statusline.bg },
		NavicIconsPackage                                                                                            { fg = snazzy.fg, bg = snazzy.statusline.bg },
		NavicIconsClass                                                                                              { fg = snazzy.fg, bg = snazzy.statusline.bg },
		NavicIconsProperty                                                                                           { fg = snazzy.fg, bg = snazzy.statusline.bg },
		NavicIconsField                                                                                              { fg = snazzy.fg, bg = snazzy.statusline.bg },
		NavicIconsConstructor                                                                                        { fg = snazzy.fg, bg = snazzy.statusline.bg },
		NavicIconsEnum                                                                                               { fg = snazzy.fg, bg = snazzy.statusline.bg },
		NavicIconsInterface                                                                                          { fg = snazzy.fg, bg = snazzy.statusline.bg },
		NavicIconsVariable                                                                                           { NavicIconsDefault },
		NavicIconsConstan                                                                                            { NavicIconsDefault },
		NavicIconsString                                                                                             { NavicIconsDefault },
		NavicIconsNumber                                                                                             { NavicIconsDefault },
		NavicIconsBoolean                                                                                            { NavicIconsDefault },
		NavicIconsArray                                                                                              { NavicIconsDefault },
		NavicIconsObject                                                                                             { NavicIconsDefault },
		NavicIconsKey                                                                                                { NavicIconsDefault },
		NavicIconsNull                                                                                               { NavicIconsDefault },
		NavicIconsEnumMember                                                                                         { NavicIconsDefault },
		NavicIconsStruct                                                                                             { NavicIconsDefault },
		NavicIconsEvent                                                                                              { NavicIconsDefault },
		NavicIconsOperator                                                                                           { NavicIconsDefault },
		NavicIconsTypeParameter                                                                                      { NavicIconsDefault },
		NoiceMini                                                                                                    { fg = snazzy.fg, bg = snazzy.bg },
		NoiceLspProgressClient                                                                                       { Title },

		CmpCompletionWindowBorder                                                                                    { fg = snazzy.blue }, -- CmpCompletionWindowBorder xxx guifg=#57c7ff
		CmpDocumentationWindowBorder                                                                                 { fg = snazzy.blue }, -- CmpDocumentationWindowBorder xxx guifg=#57c7ff
		CmpItemAbbrDefault                                                                                           { fg = "#eff0eb" }, -- CmpItemAbbrDefault xxx guifg=#eff0eb
		CmpItemAbbr                                                                                                  { CmpItemAbbrDefault }, -- CmpItemAbbr    xxx links to CmpItemAbbrDefault
		CmpItemAbbrDeprecatedDefault                                                                                 { fg = "#606580" }, -- CmpItemAbbrDeprecatedDefault xxx guifg=#606580
		CmpItemAbbrDeprecated                                                                                        { CmpItemAbbrDeprecatedDefault }, -- CmpItemAbbrDeprecated xxx links to CmpItemAbbrDeprecatedDefault
		CmpItemAbbrMatchDefault                                                                                      { fg = "#eff0eb" }, -- CmpItemAbbrMatchDefault xxx guifg=#eff0eb
		CmpItemAbbrMatch                                                                                             { fg = snazzy.green }, -- CmpItemAbbrMatch xxx links to CmpItemAbbrMatchDefault
		CmpItemAbbrMatchFuzzyDefault                                                                                 { fg = "#eff0eb" }, -- CmpItemAbbrMatchFuzzyDefault xxx guifg=#eff0eb
		CmpItemAbbrMatchFuzzy                                                                                        { fg = snazzy.yellow }, -- CmpItemAbbrMatchFuzzy xxx links to CmpItemAbbrMatchFuzzyDefault
		CmpItemKindDefault                                                                                           { fg = snazzy.yellow }, -- CmpItemKindDefault xxx guifg=#f3f99d
		CmpItemKind                                                                                                  { CmpItemKindDefault }, -- CmpItemKind    xxx links to CmpItemKindDefault
		CmpItemMenuDefault                                                                                           { fg = "#eff0eb" }, -- CmpItemMenuDefault xxx guifg=#eff0eb
		CmpItemMenu                                                                                                  { CmpItemMenuDefault }, -- CmpItemMenu    xxx links to CmpItemMenuDefault
		CmpItemKindCodeium                                                                                           { CmpItemKindDefault },

		BlinkCmpDocBorder                                                                                            { NormalFloat }, -- BlinkCmpDocBorder xxx links to NormalFloat
		BlinkCmpDocCursorLine                                                                                        { Visual }, -- BlinkCmpDocCursorLine xxx links to Visual
		BlinkCmpDocSeparator                                                                                         { NormalFloat }, -- BlinkCmpDocSeparator xxx links to NormalFloat
		BlinkCmpLabelMatch                                                                                           { CmpItemAbbrMatch }, -- BlinkCmpLabelMatch xxx links to CmpItemAbbrMatch
		-- BlinkCmpMenu                                                                                              { fg = snazzy.fg, bg = snazzy.ui_10 }, -- BlinkCmpMenu   xxx links to Pmenu
		BlinkCmpMenu                                                                                                 { fg = snazzy.fg }, -- BlinkCmpMenu   xxx links to Pmenu
		BlinkCmpDoc                                                                                                  { BlinkCmpMenu   }, -- BlinkCmpDoc    xxx links to NormalFloat
		BlinkCmpMenuBorder                                                                                           { fg = snazzy.blue }, -- BlinkCmpMenuBorder xxx links to Pmenu
		BlinkCmpMenuSelection                                                                                        { PmenuSel }, -- BlinkCmpMenuSelection xxx links to PmenuSel
		BlinkCmpScrollBarGutter                                                                                      { PmenuSbar }, -- BlinkCmpScrollBarGutter xxx links to PmenuSbar
		BlinkCmpScrollBarThumb                                                                                       { PmenuThumb }, -- BlinkCmpScrollBarThumb xxx links to PmenuThumb
		BlinkCmpSignatureHelp                                                                                        { BlinkCmpMenu }, -- BlinkCmpSignatureHelp xxx links to NormalFloat
		BlinkCmpSignatureHelpActiveParameter                                                                         { LspSignatureActiveParameter }, -- BlinkCmpSignatureHelpActiveParameter xxx links to LspSignatureActiveParameter
		BlinkCmpSignatureHelpBorder                                                                                  { NormalFloat }, -- BlinkCmpSignatureHelpBorder xxx links to NormalFloat
		BlinkCmpGhostText                                                                                            { fg = snazzy.ui_8 }
		--
		--   Added                                                                                                   { fg="nvimlightgreen", }, -- Added          xxx ctermfg=10 guifg=NvimLightGreen
		--   Changed                                                                                                 { fg="nvimlightcyan", }, -- Changed        xxx ctermfg=14 guifg=NvimLightCyan
		--   DapUIBreakpointsCurrentLine                                                                             { fg="#a9ff68", gui="bold", }, -- DapUIBreakpointsCurrentLine xxx gui=bold guifg=#a9ff68
		--   DapUIBreakpointsDisabledLine                                                                            { fg="#424242", }, -- DapUIBreakpointsDisabledLine xxx guifg=#424242
		--   DapUIBreakpointsInfo                                                                                    { fg="#a9ff68", }, -- DapUIBreakpointsInfo xxx guifg=#a9ff68
		--   DapUIBreakpointsLine                                                                                    { DapUILineNumber }, -- DapUIBreakpointsLine xxx links to DapUILineNumber
		--   DapUIBreakpointsPath                                                                                    { fg="#00f1f5", }, -- DapUIBreakpointsPath xxx guifg=#00f1f5
		--   DapUICurrentFrameName                                                                                   { DapUIBreakpointsCurrentLine }, -- DapUICurrentFrameName xxx links to DapUIBreakpointsCurrentLine
		--   DapUIDecoration                                                                                         { fg="#00f1f5", }, -- DapUIDecoration xxx guifg=#00f1f5
		--   DapUIEndofBuffer                                                                                        { EndOfBuffer }, -- DapUIEndofBuffer xxx links to EndOfBuffer
		--   DapUIFloatBorder                                                                                        { fg="#00f1f5", }, -- DapUIFloatBorder xxx guifg=#00f1f5
		--   DapUIFloatNormal                                                                                        { NormalFloat }, -- DapUIFloatNormal xxx links to NormalFloat
		--   DapUIFrameName                                                                                          { Normal }, -- DapUIFrameName xxx links to Normal
		--   DapUILineNumber                                                                                         { fg="#00f1f5", }, -- DapUILineNumber xxx guifg=#00f1f5
		--   DapUIModifiedValue                                                                                      { fg="#00f1f5", gui="bold", }, -- DapUIModifiedValue xxx gui=bold guifg=#00f1f5
		--   DapUINormal                                                                                             { Normal }, -- DapUINormal    xxx links to Normal
		--   DapUINormalNC                                                                                           { Normal }, -- DapUINormalNC  xxx links to Normal
		--   DapUIPlayPause                                                                                          { fg="#a9ff68", }, -- DapUIPlayPause xxx guifg=#a9ff68
		--   DapUIPlayPauseNC                                                                                        { fg="#a9ff68", }, -- DapUIPlayPauseNC xxx guifg=#a9ff68
		--   DapUIRestart                                                                                            { fg="#a9ff68", }, -- DapUIRestart   xxx guifg=#a9ff68
		--   DapUIRestartNC                                                                                          { fg="#a9ff68", }, -- DapUIRestartNC xxx guifg=#a9ff68
		--   DapUIScope                                                                                              { fg="#00f1f5", }, -- DapUIScope     xxx guifg=#00f1f5
		--   DapUISource                                                                                             { fg="#d484ff", }, -- DapUISource    xxx guifg=#d484ff
		--   DapUIStepBack                                                                                           { fg="#00f1f5", }, -- DapUIStepBack  xxx guifg=#00f1f5
		--   DapUIStepBackNC                                                                                         { fg="#00f1f5", }, -- DapUIStepBackNC xxx guifg=#00f1f5
		--   DapUIStepInto                                                                                           { fg="#00f1f5", }, -- DapUIStepInto  xxx guifg=#00f1f5
		--   DapUIStepIntoNC                                                                                         { fg="#00f1f5", }, -- DapUIStepIntoNC xxx guifg=#00f1f5
		--   DapUIStepOut                                                                                            { fg="#00f1f5", }, -- DapUIStepOut   xxx guifg=#00f1f5
		--   DapUIStepOutNC                                                                                          { fg="#00f1f5", }, -- DapUIStepOutNC xxx guifg=#00f1f5
		--   DapUIStepOver                                                                                           { fg="#00f1f5", }, -- DapUIStepOver  xxx guifg=#00f1f5
		--   DapUIStepOverNC                                                                                         { fg="#00f1f5", }, -- DapUIStepOverNC xxx guifg=#00f1f5
		--   DapUIStop                                                                                               { fg="#f70067", }, -- DapUIStop      xxx guifg=#f70067
		--   DapUIStopNC                                                                                             { fg="#f70067", }, -- DapUIStopNC    xxx guifg=#f70067
		--   DapUIStoppedThread                                                                                      { fg="#00f1f5", }, -- DapUIStoppedThread xxx guifg=#00f1f5
		--   DapUIThread                                                                                             { fg="#a9ff68", }, -- DapUIThread    xxx guifg=#a9ff68
		--   DapUIType                                                                                               { fg="#d484ff", }, -- DapUIType      xxx guifg=#d484ff
		--   DapUIUnavailable                                                                                        { fg="#424242", }, -- DapUIUnavailable xxx guifg=#424242
		--   DapUIUnavailableNC                                                                                      { fg="#424242", }, -- DapUIUnavailableNC xxx guifg=#424242
		--   DapUIValue                                                                                              { Normal }, -- DapUIValue     xxx links to Normal
		--   DapUIVariable                                                                                           { Normal }, -- DapUIVariable  xxx links to Normal
		--   DapUIWatchesEmpty                                                                                       { fg="#f70067", }, -- DapUIWatchesEmpty xxx guifg=#f70067
		--   DapUIWatchesError                                                                                       { fg="#f70067", }, -- DapUIWatchesError xxx guifg=#f70067
		--   DapUIWatchesValue                                                                                       { fg="#a9ff68", }, -- DapUIWatchesValue xxx guifg=#a9ff68
		--   DapUIWinSelect                                                                                          { fg="#00f1f5", gui="bold", }, -- DapUIWinSelect xxx ctermfg=14 gui=bold guifg=#00f1f5
		--   DashboardCenter                                                                                         { fg="#57c7ff", }, -- DashboardCenter xxx guifg=#57c7ff
		--   DashboardFooter                                                                                         { fg="#686868", }, -- DashboardFooter xxx guifg=#686868
		--   DashboardHeader                                                                                         { fg="#f3f99f", }, -- DashboardHeader xxx guifg=#f3f99f
		--   DashboardShortCut                                                                                       { fg="#ff6bc1", }, -- DashboardShortCut xxx guifg=#ff6bc1
		--   MarkviewBlockQuoteDefault                                                                               { fg="#606580", }, -- MarkviewBlockQuoteDefault xxx guifg=#606580
		--   MarkviewBlockQuoteError                                                                                 { fg="#ff5c57", }, -- MarkviewBlockQuoteError xxx guifg=#ff5c57
		--   MarkviewBlockQuoteNote                                                                                  { fg="#f3f99f", }, -- MarkviewBlockQuoteNote xxx guifg=#f3f99f
		--   MarkviewBlockQuoteOk                                                                                    { fg="#b3f6c0", }, -- MarkviewBlockQuoteOk xxx guifg=#b3f6c0
		--   MarkviewBlockQuoteSpecial                                                                               { fg="#f3f99f", }, -- MarkviewBlockQuoteSpecial xxx guifg=#f3f99f
		--   MarkviewBlockQuoteWarn                                                                                  { fg="#ff9e42", }, -- MarkviewBlockQuoteWarn xxx guifg=#ff9e42
		--   MarkviewCheckboxCancelled                                                                               { fg="#606580", }, -- MarkviewCheckboxCancelled xxx guifg=#606580
		--   MarkviewCheckboxChecked                                                                                 { fg="#b3f6c0", }, -- MarkviewCheckboxChecked xxx guifg=#b3f6c0
		--   MarkviewCheckboxPending                                                                                 { fg="#ff9e42", }, -- MarkviewCheckboxPending xxx guifg=#ff9e42
		--   MarkviewCheckboxProgress                                                                                { fg="#f3f99f", }, -- MarkviewCheckboxProgress xxx guifg=#f3f99f
		--   MarkviewCheckboxStriked                                                                                 { fg="#606580", gui="strikethrough", }, -- MarkviewCheckboxStriked xxx cterm=strikethrough gui=strikethrough guifg=#606580
		--   MarkviewCheckboxUnchecked                                                                               { fg="#ff5c57", }, -- MarkviewCheckboxUnchecked xxx guifg=#ff5c57
		--   MarkviewCode                                                                                            { bg="#28283d", }, -- MarkviewCode   xxx guibg=#28283d
		--   MarkviewCodeInfo                                                                                        { fg="#606580", bg="#28283d", }, -- MarkviewCodeInfo xxx guifg=#606580 guibg=#28283d
		--   MarkviewGradient1                                                                                       { fg="#cdd6f4", }, -- MarkviewGradient1 xxx guifg=#cdd6f4
		--   MarkviewGradient10                                                                                      { fg="#f3f99f", }, -- MarkviewGradient10 xxx guifg=#f3f99f
		--   MarkviewGradient2                                                                                       { fg="#d1d9ea", }, -- MarkviewGradient2 xxx guifg=#d1d9ea
		--   MarkviewGradient3                                                                                       { fg="#d5dde1", }, -- MarkviewGradient3 xxx guifg=#d5dde1
		--   MarkviewGradient4                                                                                       { fg="#d9e1d7", }, -- MarkviewGradient4 xxx guifg=#d9e1d7
		--   MarkviewGradient5                                                                                       { fg="#dde5ce", }, -- MarkviewGradient5 xxx guifg=#dde5ce
		--   MarkviewGradient6                                                                                       { fg="#e2e9c4", }, -- MarkviewGradient6 xxx guifg=#e2e9c4
		--   MarkviewGradient7                                                                                       { fg="#e6edbb", }, -- MarkviewGradient7 xxx guifg=#e6edbb
		--   MarkviewGradient8                                                                                       { fg="#eaf1b1", }, -- MarkviewGradient8 xxx guifg=#eaf1b1
		--   MarkviewGradient9                                                                                       { fg="#eef5a8", }, -- MarkviewGradient9 xxx guifg=#eef5a8
		--   MarkviewHeading1                                                                                        { fg="#f3f99f", bg="#53544a", }, -- MarkviewHeading1 xxx guifg=#f3f99f guibg=#53544a
		--   MarkviewHeading1Sign                                                                                    { fg="#f3f99f", }, -- MarkviewHeading1Sign xxx guifg=#f3f99f
		--   MarkviewHeading2                                                                                        { fg="#f3f99f", bg="#53544a", }, -- MarkviewHeading2 xxx guifg=#f3f99f guibg=#53544a
		--   MarkviewHeading2Sign                                                                                    { fg="#f3f99f", }, -- MarkviewHeading2Sign xxx guifg=#f3f99f
		--   MarkviewHeading3                                                                                        { fg="#f3f99f", bg="#53544a", }, -- MarkviewHeading3 xxx guifg=#f3f99f guibg=#53544a
		--   MarkviewHeading3Sign                                                                                    { fg="#f3f99f", }, -- MarkviewHeading3Sign xxx guifg=#f3f99f
		--   MarkviewHeading4                                                                                        { fg="#f3f99f", bg="#53544a", }, -- MarkviewHeading4 xxx guifg=#f3f99f guibg=#53544a
		--   MarkviewHeading4Sign                                                                                    { fg="#f3f99f", }, -- MarkviewHeading4Sign xxx guifg=#f3f99f
		--   MarkviewHeading5                                                                                        { fg="#f3f99f", bg="#53544a", }, -- MarkviewHeading5 xxx guifg=#f3f99f guibg=#53544a
		--   MarkviewHeading5Sign                                                                                    { fg="#f3f99f", }, -- MarkviewHeading5Sign xxx guifg=#f3f99f
		--   MarkviewHeading6                                                                                        { fg="#f3f99f", bg="#53544a", }, -- MarkviewHeading6 xxx guifg=#f3f99f guibg=#53544a
		--   MarkviewHeading6Sign                                                                                    { fg="#f3f99f", }, -- MarkviewHeading6Sign xxx guifg=#f3f99f
		--   MarkviewIcon1                                                                                           { fg="#f3f99f", bg="#28283d", }, -- MarkviewIcon1  xxx guifg=#f3f99f guibg=#28283d
		--   MarkviewIcon1Fg                                                                                         { fg="#f3f99f", }, -- MarkviewIcon1Fg xxx guifg=#f3f99f
		--   MarkviewIcon1Sign                                                                                       { fg="#f3f99f", }, -- MarkviewIcon1Sign xxx guifg=#f3f99f
		--   MarkviewIcon2                                                                                           { fg="#f3f99f", bg="#28283d", }, -- MarkviewIcon2  xxx guifg=#f3f99f guibg=#28283d
		--   MarkviewIcon2Fg                                                                                         { fg="#f3f99f", }, -- MarkviewIcon2Fg xxx guifg=#f3f99f
		--   MarkviewIcon2Sign                                                                                       { fg="#f3f99f", }, -- MarkviewIcon2Sign xxx guifg=#f3f99f
		--   MarkviewIcon3                                                                                           { fg="#f3f99f", bg="#28283d", }, -- MarkviewIcon3  xxx guifg=#f3f99f guibg=#28283d
		--   MarkviewIcon3Fg                                                                                         { fg="#f3f99f", }, -- MarkviewIcon3Fg xxx guifg=#f3f99f
		--   MarkviewIcon3Sign                                                                                       { fg="#f3f99f", }, -- MarkviewIcon3Sign xxx guifg=#f3f99f
		--   MarkviewIcon4                                                                                           { fg="#f3f99f", bg="#28283d", }, -- MarkviewIcon4  xxx guifg=#f3f99f guibg=#28283d
		--   MarkviewIcon4Fg                                                                                         { fg="#f3f99f", }, -- MarkviewIcon4Fg xxx guifg=#f3f99f
		--   MarkviewIcon4Sign                                                                                       { fg="#f3f99f", }, -- MarkviewIcon4Sign xxx guifg=#f3f99f
		--   MarkviewIcon5                                                                                           { fg="#f3f99f", bg="#28283d", }, -- MarkviewIcon5  xxx guifg=#f3f99f guibg=#28283d
		--   MarkviewIcon5Fg                                                                                         { fg="#f3f99f", }, -- MarkviewIcon5Fg xxx guifg=#f3f99f
		--   MarkviewIcon5Sign                                                                                       { fg="#f3f99f", }, -- MarkviewIcon5Sign xxx guifg=#f3f99f
		--   MarkviewIcon6                                                                                           { fg="#f3f99f", bg="#28283d", }, -- MarkviewIcon6  xxx guifg=#f3f99f guibg=#28283d
		--   MarkviewIcon6Fg                                                                                         { fg="#f3f99f", }, -- MarkviewIcon6Fg xxx guifg=#f3f99f
		--   MarkviewIcon6Sign                                                                                       { fg="#f3f99f", }, -- MarkviewIcon6Sign xxx guifg=#f3f99f
		--   MarkviewInlineCode                                                                                      { bg="#32324c", }, -- MarkviewInlineCode xxx guibg=#32324c
		--   MarkviewLatexSubscript                                                                                  { fg="#a1947b", gui="italic", }, -- MarkviewLatexSubscript xxx cterm=italic gui=italic guifg=#a1947b
		--   MarkviewLatexSuperscript                                                                                { fg="#6f9473", gui="italic", }, -- MarkviewLatexSuperscript xxx cterm=italic gui=italic guifg=#6f9473
		--   MarkviewListItemMinus                                                                                   { fg="#ff9e42", }, -- MarkviewListItemMinus xxx guifg=#ff9e42
		--   MarkviewListItemPlus                                                                                    { fg="#b3f6c0", }, -- MarkviewListItemPlus xxx guifg=#b3f6c0
		--   MarkviewListItemStar                                                                                    { fg="#f3f99f", }, -- MarkviewListItemStar xxx guifg=#f3f99f
		--   MarkviewTableAlignCenter                                                                                { fg="#add8e6", }, -- MarkviewTableAlignCenter xxx guifg=#add8e6
		--   MarkviewTableAlignLeft                                                                                  { fg="#add8e6", }, -- MarkviewTableAlignLeft xxx guifg=#add8e6
		--   MarkviewTableAlignRight                                                                                 { fg="#add8e6", }, -- MarkviewTableAlignRight xxx guifg=#add8e6
		--   MarkviewTableBorder                                                                                     { fg="#f3f99f", }, -- MarkviewTableBorder xxx guifg=#f3f99f
		--   MarkviewTableHeader                                                                                     { fg="#add8e6", }, -- MarkviewTableHeader xxx guifg=#add8e6
		--   MatchBackground                                                                                         { ColorColumn }, -- MatchBackground xxx links to ColorColumn
		--   MatchParen                                                                                              { fg="#59f78e", gui="bold", }, -- MatchParen     xxx cterm=bold gui=bold guifg=#59f78e
		--   MatchParenCur                                                                                           { MatchParen }, -- MatchParenCur  xxx links to MatchParen
		--   MatchWord                                                                                               { MatchParen }, -- MatchWord      xxx links to MatchParen
		--   MiniSurround                                                                                            { IncSearch }, -- MiniSurround   xxx links to IncSearch
		--   ModeMsg                                                                                                 { fg="#f9f9f9", gui="bold", bg="#192224", sp="#192224", }, -- ModeMsg        xxx cterm=bold gui=bold guifg=#f9f9f9 guibg=#192224 guisp=#192224
		--   MoreMsg                                                                                                 { fg="#f3f99f", gui="bold", }, -- MoreMsg        xxx cterm=bold gui=bold guifg=#f3f99f
		--   MsgSeparator                                                                                            { StatusLine }, -- MsgSeparator   xxx links to StatusLine
		--   NoiceCmdlineIcon                                                                                        { DiagnosticSignInfo }, -- NoiceCmdlineIcon xxx links to DiagnosticSignInfo
		--   NoiceCmdlineIconSearch                                                                                  { DiagnosticSignWarn }, -- NoiceCmdlineIconSearch xxx links to DiagnosticSignWarn
		--   NoiceCmdlinePopup                                                                                       { Normal }, -- NoiceCmdlinePopup xxx links to Normal
		--   NoiceCmdlinePopupBorder                                                                                 { DiagnosticSignInfo }, -- NoiceCmdlinePopupBorder xxx links to DiagnosticSignInfo
		--   NoiceCmdlinePopupBorderSearch                                                                           { DiagnosticSignWarn }, -- NoiceCmdlinePopupBorderSearch xxx links to DiagnosticSignWarn
		--   NoiceCmdlinePopupTitle                                                                                  { DiagnosticSignInfo }, -- NoiceCmdlinePopupTitle xxx links to DiagnosticSignInfo
		--   NoiceCmdlinePrompt                                                                                      { Title }, -- NoiceCmdlinePrompt xxx links to Title
		--   NoiceCompletionItemKindDefault                                                                          { Special }, -- NoiceCompletionItemKindDefault xxx links to Special
		--   NoiceConfirm                                                                                            { Normal }, -- NoiceConfirm   xxx links to Normal
		--   NoiceConfirmBorder                                                                                      { DiagnosticSignInfo }, -- NoiceConfirmBorder xxx links to DiagnosticSignInfo
		--   NoiceCursor                                                                                             { Cursor }, -- NoiceCursor    xxx links to Cursor
		--   NoiceFormatConfirm                                                                                      { CursorLine }, -- NoiceFormatConfirm xxx links to CursorLine
		--   NoiceFormatConfirmDefault                                                                               { Visual }, -- NoiceFormatConfirmDefault xxx links to Visual
		--   NoiceFormatDate                                                                                         { Special }, -- NoiceFormatDate xxx links to Special
		--   NoiceFormatEvent                                                                                        { NonText }, -- NoiceFormatEvent xxx links to NonText
		--   NoiceFormatKind                                                                                         { NonText }, -- NoiceFormatKind xxx links to NonText
		--   NoiceFormatLevelDebug                                                                                   { NonText }, -- NoiceFormatLevelDebug xxx links to NonText
		--   NoiceFormatLevelError                                                                                   { DiagnosticVirtualTextError }, -- NoiceFormatLevelError xxx links to DiagnosticVirtualTextError
		--   NoiceFormatLevelInfo                                                                                    { DiagnosticVirtualTextInfo }, -- NoiceFormatLevelInfo xxx links to DiagnosticVirtualTextInfo
		--   NoiceFormatLevelOff                                                                                     { NonText }, -- NoiceFormatLevelOff xxx links to NonText
		--   NoiceFormatLevelTrace                                                                                   { NonText }, -- NoiceFormatLevelTrace xxx links to NonText
		--   NoiceFormatLevelWarn                                                                                    { DiagnosticVirtualTextWarn }, -- NoiceFormatLevelWarn xxx links to DiagnosticVirtualTextWarn
		--   NoiceFormatProgressDone                                                                                 { fg="#eff0eb", bg="#434805", }, -- NoiceFormatProgressDone xxx guifg=#eff0eb guibg=#434805
		--   NoiceFormatProgressTodo                                                                                 { CursorLine }, -- NoiceFormatProgressTodo xxx links to CursorLine
		--   NoiceFormatTitle                                                                                        { Title }, -- NoiceFormatTitle xxx links to Title
		--   NoiceHiddenCursor                                                                                       { gui="nocombine", blend=100, }, -- NoiceHiddenCursor xxx cterm=nocombine gui=nocombine blend=100
		--   NoiceLspProgressClient                                                                                  { Title }, -- NoiceLspProgressClient xxx links to Title
		--   NoiceLspProgressSpinner                                                                                 { Constant }, -- NoiceLspProgressSpinner xxx links to Constant
		--   NoiceLspProgressTitle                                                                                   { NonText }, -- NoiceLspProgressTitle xxx links to NonText
		--   NoiceMini                                                                                               { fg="#eff0eb", bg="#272935", }, -- NoiceMini      xxx guifg=#eff0eb guibg=#272935
		--   NoicePopup                                                                                              { NormalFloat }, -- NoicePopup     xxx links to NormalFloat
		--   NoicePopupBorder                                                                                        { FloatBorder }, -- NoicePopupBorder xxx links to FloatBorder
		--   NoicePopupmenu                                                                                          { Pmenu }, -- NoicePopupmenu xxx links to Pmenu
		--   NoicePopupmenuBorder                                                                                    { FloatBorder }, -- NoicePopupmenuBorder xxx links to FloatBorder
		--   NoicePopupmenuMatch                                                                                     { Special }, -- NoicePopupmenuMatch xxx links to Special
		--   NoicePopupmenuSelected                                                                                  { PmenuSel }, -- NoicePopupmenuSelected xxx links to PmenuSel
		--   NoiceScrollbar                                                                                          { PmenuSbar }, -- NoiceScrollbar xxx links to PmenuSbar
		--   NoiceScrollbarThumb                                                                                     { PmenuThumb }, -- NoiceScrollbarThumb xxx links to PmenuThumb
		--   NoiceSplit                                                                                              { NormalFloat }, -- NoiceSplit     xxx links to NormalFloat
		--   NoiceSplitBorder                                                                                        { FloatBorder }, -- NoiceSplitBorder xxx links to FloatBorder
		--   NoiceVirtualText                                                                                        { DiagnosticVirtualTextInfo }, -- NoiceVirtualText xxx links to DiagnosticVirtualTextInfo
		--   NotifierContent                                                                                         { Normal }, -- NotifierContent xxx links to Normal
		--   NotifierContentDim                                                                                      { Comment }, -- NotifierContentDim xxx links to Comment
		--   NotifierIcon                                                                                            { Title }, -- NotifierIcon   xxx links to Title
		--   NotifierTitle                                                                                           { Title }, -- NotifierTitle  xxx links to Title
		--   NotifyBackground                                                                                        { bg="#272935", }, -- NotifyBackground xxx guibg=#272935
		--   ObsidianBlockID                                                                                         { fg="#89ddff", gui="italic", }, -- ObsidianBlockID xxx cterm=italic gui=italic guifg=#89ddff
		--   ObsidianBullet                                                                                          { fg="#89ddff", gui="bold", }, -- ObsidianBullet xxx cterm=bold gui=bold guifg=#89ddff
		--   ObsidianDone                                                                                            { fg="#89ddff", gui="bold", }, -- ObsidianDone   xxx cterm=bold gui=bold guifg=#89ddff
		--   ObsidianExtLinkIcon                                                                                     { fg="#c792ea", }, -- ObsidianExtLinkIcon xxx guifg=#c792ea
		--   ObsidianHighlightText                                                                                   { bg="#75662e", }, -- ObsidianHighlightText xxx guibg=#75662e
		--   ObsidianImportant                                                                                       { fg="#d73128", gui="bold", }, -- ObsidianImportant xxx cterm=bold gui=bold guifg=#d73128
		--   ObsidianRefText                                                                                         { fg="#c792ea", gui="underline", }, -- ObsidianRefText xxx cterm=underline gui=underline guifg=#c792ea
		--   ObsidianRightArrow                                                                                      { fg="#f78c6c", gui="bold", }, -- ObsidianRightArrow xxx cterm=bold gui=bold guifg=#f78c6c
		--   ObsidianTag                                                                                             { fg="#89ddff", gui="italic", }, -- ObsidianTag    xxx cterm=italic gui=italic guifg=#89ddff
		--   ObsidianTilde                                                                                           { fg="#ff5370", gui="bold", }, -- ObsidianTilde  xxx cterm=bold gui=bold guifg=#ff5370
		--   ObsidianTodo                                                                                            { fg="#f78c6c", gui="bold", }, -- ObsidianTodo   xxx cterm=bold gui=bold guifg=#f78c6c
		--   OilChange                                                                                               { Special }, -- OilChange      xxx links to Special
		--   OilCopy                                                                                                 { DiagnosticHint }, -- OilCopy        xxx links to DiagnosticHint
		--   OilCreate                                                                                               { DiagnosticInfo }, -- OilCreate      xxx links to DiagnosticInfo
		--   OilDelete                                                                                               { DiagnosticError }, -- OilDelete      xxx links to DiagnosticError
		--   OilDir                                                                                                  { Directory }, -- OilDir         xxx links to Directory
		--   OilHidden                                                                                               { Comment }, -- OilHidden      xxx links to Comment
		--   OilLinkTarget                                                                                           { Comment }, -- OilLinkTarget  xxx links to Comment
		--   OilMove                                                                                                 { DiagnosticWarn }, -- OilMove        xxx links to DiagnosticWarn
		--   OilOrphanLinkTarget                                                                                     { DiagnosticError }, -- OilOrphanLinkTarget xxx links to DiagnosticError
		--   OilSocket                                                                                               { Keyword }, -- OilSocket      xxx links to Keyword
		--   OilTrashSourcePath                                                                                      { Comment }, -- OilTrashSourcePath xxx links to Comment
		--   Operator                                                                                                { fg="#ff6bc1", gui="bold", }, -- Operator       xxx cterm=bold gui=bold guifg=#ff6bc1
		--   OtherSelector                                                                                           { Error }, -- OtherSelector  xxx links to Error
		--   OtherUnderlined                                                                                         { Underlined }, -- OtherUnderlined xxx links to Underlined
		--   OverseerCANCELED                                                                                        { DiagnosticWarn }, -- OverseerCANCELED xxx links to DiagnosticWarn
		--   OverseerComponent                                                                                       { Constant }, -- OverseerComponent xxx links to Constant
		--   OverseerDISPOSED                                                                                        { Comment }, -- OverseerDISPOSED xxx links to Comment
		--   OverseerFAILURE                                                                                         { DiagnosticError }, -- OverseerFAILURE xxx links to DiagnosticError
		--   OverseerField                                                                                           { Keyword }, -- OverseerField  xxx links to Keyword
		--   OverseerOutput                                                                                          { Normal }, -- OverseerOutput xxx links to Normal
		--   OverseerPENDING                                                                                         { Normal }, -- OverseerPENDING xxx links to Normal
		--   OverseerRUNNING                                                                                         { Constant }, -- OverseerRUNNING xxx links to Constant
		--   OverseerSUCCESS                                                                                         { DiagnosticOk }, -- OverseerSUCCESS xxx links to DiagnosticOk
		--   OverseerTask                                                                                            { Title }, -- OverseerTask   xxx links to Title
		--   OverseerTaskBorder                                                                                      { FloatBorder }, -- OverseerTaskBorder xxx links to FloatBorder
		--   SnacksDashboardDesc                                                                                     { Special }, -- SnacksDashboardDesc xxx links to Special
		--   SnacksDashboardDir                                                                                      { NonText }, -- SnacksDashboardDir xxx links to NonText
		--   SnacksDashboardFile                                                                                     { Special }, -- SnacksDashboardFile xxx links to Special
		--   SnacksDashboardFooter                                                                                   { Title }, -- SnacksDashboardFooter xxx links to Title
		--   SnacksDashboardHeader                                                                                   { Title }, -- SnacksDashboardHeader xxx links to Title
		--   SnacksDashboardIcon                                                                                     { Special }, -- SnacksDashboardIcon xxx links to Special
		--   SnacksDashboardKey                                                                                      { Number }, -- SnacksDashboardKey xxx links to Number
		--   SnacksDashboardNormal                                                                                   { Normal }, -- SnacksDashboardNormal xxx links to Normal
		--   SnacksDashboardSpecial                                                                                  { Special }, -- SnacksDashboardSpecial xxx links to Special
		--   SnacksDashboardTitle                                                                                    { Title }, -- SnacksDashboardTitle xxx links to Title
		--   SnacksIndent                                                                                            { NonText }, -- SnacksIndent   xxx links to NonText
		--   SnacksIndent1                                                                                           { DiagnosticInfo }, -- SnacksIndent1  xxx links to DiagnosticInfo
		--   SnacksIndent2                                                                                           { DiagnosticHint }, -- SnacksIndent2  xxx links to DiagnosticHint
		--   SnacksIndent3                                                                                           { DiagnosticWarn }, -- SnacksIndent3  xxx links to DiagnosticWarn
		--   SnacksIndent4                                                                                           { DiagnosticError }, -- SnacksIndent4  xxx links to DiagnosticError
		--   SnacksIndent5                                                                                           { DiagnosticInfo }, -- SnacksIndent5  xxx links to DiagnosticInfo
		--   SnacksIndent6                                                                                           { DiagnosticHint }, -- SnacksIndent6  xxx links to DiagnosticHint
		--   SnacksIndent7                                                                                           { DiagnosticWarn }, -- SnacksIndent7  xxx links to DiagnosticWarn
		--   SnacksIndent8                                                                                           { DiagnosticError }, -- SnacksIndent8  xxx links to DiagnosticError
		--   SnacksIndentScope                                                                                       { Special }, -- SnacksIndentScope xxx links to Special
		--   SnacksInputBorder                                                                                       { DiagnosticInfo }, -- SnacksInputBorder xxx links to DiagnosticInfo
		--   SnacksInputIcon                                                                                         { DiagnosticHint }, -- SnacksInputIcon xxx links to DiagnosticHint
		--   SnacksInputNormal                                                                                       { Normal }, -- SnacksInputNormal xxx links to Normal
		--   SnacksInputTitle                                                                                        { DiagnosticInfo }, -- SnacksInputTitle xxx links to DiagnosticInfo
	}
end)
return theme
