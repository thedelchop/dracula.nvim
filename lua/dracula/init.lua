-- Dracula color scheme

vim.api.nvim_command("set background=dark")
vim.g.colors_name = "dracula"

local colors = {
	bg = "#282A36",
	fg = "#F8F8F2",
	selection = "#44475A",
	comment = "#6272A4",
	red = "#FF5555",
	orange = "#FFB86C",
	yellow = "#F1FA8C",
	green = "#50fa7b",
	purple = "#BD93F9",
	cyan = "#8BE9FD",
	pink = "#FF79C6",
	bright_red = "#FF6E6E",
	bright_green = "#69FF94",
	bright_yellow = "#FFFFA5",
	bright_blue = "#D6ACFF",
	bright_magenta = "#FF92DF",
	bright_cyan = "#A4FFFF",
	bright_white = "#FFFFFF",
	menu = "#21222C",
	visual = "#3E4452",
	gutter_fg = "#4B5263",
	nontext = "#3B4048",
	white = "#ABB2BF",
	black = "#191A21"
}

vim.g.terminal_color_0 = colors.back
vim.g.terminal_color_1 = colors.red
vim.g.terminal_color_2 = colors.green
vim.g.terminal_color_3 = colors.yellow
vim.g.terminal_color_4 = colors.purple
vim.g.terminal_color_5 = colors.pink
vim.g.terminal_color_6 = colors.cyan
vim.g.terminal_color_7 = colors.white
vim.g.terminal_color_8 = colors.selection
vim.g.terminal_color_9 = colors.bright_red
vim.g.terminal_color_11 = colors.bright_yellow
vim.g.terminal_color_12 = colors.bright_blue
vim.g.terminal_color_13 = colors.bright_magenta
vim.g.terminal_color_14 = colors.bright_cyan
vim.g.terminal_color_15 = colors.bright_white
vim.g.terminal_color_background = colors.bg
vim.g.terminal_color_foreground = colors.fg

local highlight = function(group, fg, bg, attr, sp)
    fg = fg and "guifg=" .. fg or "guifg=NONE"
    bg = bg and "guibg=" .. bg or "guibg=NONE"
    attr = attr and "gui=" ..attr or "gui=NONE"
	sp = sp and "guisp=" .. sp or ""

    vim.api.nvim_command("highlight " .. group .. " ".. fg .. " " .. bg .. " ".. attr .. " " .. sp)
end

-- highlight(Group, Foreground, Backgroud, Attribute, Special)
highlight("Normal", colors.fg, colors.bg, nil, nil)
highlight("Comment", colors.comment, nil, nil, nil)
highlight("Constant", colors.yellow, nil, nil, nil)
highlight("String", colors.yellow, nil, nil, nil)
highlight("Character", colors.green, nil, nil, nil)
highlight("Number", colors.orange, nil, nil, nil)
highlight("Boolean", colors.cyan, nil, nil, nil)
highlight("Float", colors.orange, nil, nil, nil)
highlight("Operator", colors.purple, nil, nil, nil)
highlight("Keywords", colors.cyan, nil, nil, nil)
highlight("Identifier", colors.cyan, nil, nil, nil)
highlight("Function", colors.yellow, nil, nil, nil)
highlight("Statement", colors.purple, nil, nil, nil)
highlight("Conditional", colors.pink, nil, nil, nil)
highlight("Repeat", colors.pink, nil, nil, nil)
highlight("Label", colors.cyan, nil, nil, nil)
highlight("Exception", colors.purple, nil, nil, nil)
highlight("PreProc", colors.yellow, nil, nil, nil)
highlight("Include", colors.purple, nil, nil, nil)
highlight("Define", colors.purple, nil, nil, nil)
highlight("Title", colors.cyan, nil, nil, nil)
highlight("Macro", colors.purple, nil, nil, nil)
highlight("PreCondit", colors.cyan, nil, nil, nil)
highlight("Type", colors.cyan, nil, nil, nil)
highlight("StorageClass", colors.pink, nil, nil, nil)
highlight("Structure", colors.yellow, nil, nil, nil)
highlight("TypeDef", colors.yellow, nil, nil, nil)
highlight("Special", colors.green, nil, nil, nil)
highlight("SpecialComment", colors.comment, nil, nil, nil)
highlight("Error", colors.bright_red, nil, nil, nil)
highlight("Todo", colors.purple, nil, "bold,italic", nil)
highlight("Underlined", colors.cyan, nil, "underline", nil)

highlight("Cursor", nil, nil, "reverse", nil)
highlight("CursorColumn", nil, colors.black, "reverse", nil)
highlight("CursorLineNr", colors.fg, nil, "bold", nil)
highlight("SignColumn", nil, colors.bg, nil, nil)
highlight("Conceal", colors.comment, nil, nil, nil)
highlight("CursorColumn", nil, colors.black, nil, nil)
highlight("CursorLine", nil, colors.selection, nil, nil)

highlight("StatusLine", colors.white, colors.black, nil, nil)
highlight("StatusLineNC", colors.comment, nil, nil, nil)
highlight("StatusLineTerm", colors.white, colors.black, nil, nil)
highlight("StatusLineTermNC", colors.comment, nil, nil, nil)

highlight("Directory", colors.cyan, nil, nil, nil)
highlight("DiffAdd", colors.bg, colors.green, nil, nil)
highlight("DiffChange", colors.orange, nil, nil, nil)
highlight("DiffDelete", colors.red, nil, nil, nil)
highlight("DiffText", colors.comment, nil, nil, nil)

highlight("ErrorMsg", colors.bright_red, nil, nil, nil)
highlight("VertSplit", colors.black, nil, nil, nil)
highlight("Folded", colors.comment, nil, nil, nil)
highlight("FoldColumn", nil, nil, nil, nil)
highlight("Search", colors.black, colors.orange, nil, nil)
highlight("IncSearch", colors.orange, colors.comment, nil, nil)
highlight("LineNr", colors.comment, nil, nil, nil)
highlight("MatchParen", colors.fg, nil, "underline", nil)
highlight("NonText", colors.nontext, nil, nil, nil)
highlight("Pmenu", colors.white, colors.menu, nil, nil)
highlight("PmenuSel", colors.white, colors.selection, nil, nil)
highlight("PmenuSbar", nil, colors.bg, nil, nil)
highlight("PmenuThumb", nil, colors.selection, nil, nil)

highlight("Question", colors.purple, nil, nil, nil)
highlight("QuickFixLine", colors.black, colors.yellow, nil, nil)
highlight("SpecialKey", colors.nontext, nil, nil, nil)

highlight("SpellBad", colors.bright_red, nil, "underline", nil)
highlight("SpellCap", colors.yellow, nil, nil, nil)
highlight("SpellLocal", colors.yellow, nil, nil, nil)
highlight("SpellRare", colors.yellow, nil, nil, nil)

highlight("TabLine", colors.comment, nil, nil, nil)
highlight("TabLineSel", colors.white, nil, nil, nil)
highlight("TabLineFill", nil, colors.bg, nil, nil)
highlight("Terminal", colors.white, colors.black, nil, nil)
highlight("Visual", nil, colors.visual, nil, nil)
highlight("VisualNOS", colors.visual, nil, nil, nil)
highlight("WarningMsg", colors.yellow, nil, nil, nil)
highlight("WildMenu", colors.black, colors.white, nil, nil)
highlight("EndOfBuffer", colors.bg, nil, nil, nil)

-- TreeSitter
highlight("TSError", colors.bright_red, nil, nil, nil)
highlight("TSPunctDelimiter", colors.fg, nil, nil, nil)
highlight("TSPunctBracket", colors.fg, nil, nil, nil)
highlight("TSPunctSpecial", colors.fg, nil, nil, nil)

highlight("TSConstant", colors.purple, nil, nil, nil)
highlight("TSConstantBuiltin", colors.purple, nil, nil, nil)

highlight("TSConstMacro", colors.cyan, nil, nil, nil)
highlight("TSStringRegex", colors.red, nil, nil, nil)
highlight("TSString", colors.yellow, nil, nil, nil)
highlight("TSStringEscape", colors.cyan, nil, nil, nil)
highlight("TSCharacter", colors.green, nil, nil, nil)
highlight("TSNumber", colors.purple, nil, nil, nil)
highlight("TSBoolean", colors.purple, nil, nil, nil)
highlight("TSFloat", colors.green, nil, nil, nil)
highlight("TSAnnotation", colors.yellow, nil, nil, nil)
highlight("TSAttribute", colors.cyan, nil, nil, nil)
highlight("TSNamespace", "#FF00FF", nil, nil, nil)

highlight("TSFuncBuiltin", colors.cyan, nil, nil, nil)
highlight("TSFunction", colors.green, nil, nil, nil)
highlight("TSFuncMacro", colors.green, nil, nil, nil)
highlight("TSParameter", colors.orange, nil, nil, nil)
highlight("TSParameterReference", colors.orange, nil, nil, nil)
highlight("TSMethod", colors.green, nil, nil, nil)
highlight("TSField", colors.orange, nil, nil, nil)
highlight("TSProperty", colors.fg, nil, nil, nil)
highlight("TSConstructor", colors.cyan, nil, nil, nil)


highlight("TSConditional", colors.pink, nil, nil, nil)
highlight("TSRepeat", colors.pink, nil, nil, nil)
highlight("TSLabel", colors.cyan, nil, nil, nil)

highlight("TSKeyword", colors.pink, nil, nil, nil)
highlight("TSKeywordFunction", colors.cyan, nil, nil, nil)
highlight("TSKeywordOperator", colors.pink, nil, nil, nil)
highlight("TSOperator", colors.pink, nil, nil, nil)
highlight("TSException", colors.purple, nil, nil, nil)
highlight("TSType", colors.pink, nil, nil, nil)
highlight("TSTypeBuiltin", colors.cyan, nil, "italic", nil)
highlight("TSStructure", colors.purple, nil, nil, nil)
highlight("TSInclude", colors.pink, nil, nil, nil)


highlight("TSVariable", colors.fg, nil, nil, nil)
highlight("TSVariableBuiltin", colors.purple, nil, nil, nil)

highlight("TSText", "colors.orange", nil, nil, nil)
highlight("TSStrong", "colors.orange", nil, nil, nil)
highlight("TSEmphasis", "colors.orange", nil, nil, nil)
highlight("TSUnderline", "colors.orange", nil, nil, nil)
highlight("TSTitle", "colors.orange", nil, nil, nil)
highlight("TSLiteral", "colors.orange", nil, nil, nil)
highlight("TSURI", "colors.orange", nil, nil, nil)

highlight("TSTag", colors.cyan, nil, nil, nil)
highlight("TSTagDelimiter", colors.white, nil, nil, nil)

-- HTML
highlight("htmlArg", colors.yellow, nil, nil, nil)
highlight("htmlBold", colors.yellow, nil, "bold", nil)
highlight("htmlEndTag", colors.white, nil, nil, nil)
highlight("htmlH1", colors.pink, nil, nil, nil)
highlight("htmlH2", colors.pink, nil, nil, nil)
highlight("htmlH3", colors.pink, nil, nil, nil)
highlight("htmlH4", colors.pink, nil, nil, nil)
highlight("htmlH5", colors.pink, nil, nil, nil)
highlight("htmlH6", colors.pink, nil, nil, nil)
highlight("htmlItalic", colors.purple, nil, "italic", nil)
highlight("htmlLink", colors.purple, nil, "underline", nil)
highlight("htmlSpecialChar", colors.yellow, nil, nil, nil)
highlight("htmlSpecialTagName", colors.cyan, nil, nil, nil)
highlight("htmlTag", colors.pink, nil, nil, nil)
highlight("htmlTagN", colors.pink, nil, nil, nil)
highlight("htmlTagName", colors.cyan, nil, nil, nil)
highlight("htmlTitle", colors.white, nil, nil, nil)

-- Markdown
highlight("markdownBlockquote", colors.yellow, nil, "italic", nil)
highlight("markdownBold", colors.orange, nil, "bold", nil)
highlight("markdownCode", colors.green, nil, nil, nil)
highlight("markdownCodeBlock", colors.orange, nil, nil, nil)
highlight("markdownCodeDelimiter", colors.red, nil, nil, nil)
highlight("markdownH1", colors.pink, nil, "bold", nil)
highlight("markdownH2", colors.pink, nil, "bold", nil)
highlight("markdownH3", colors.pink, nil, "bold", nil)
highlight("markdownH4", colors.pink, nil, "bold", nil)
highlight("markdownH5", colors.pink, nil, "bold", nil)
highlight("markdownH6", colors.pink, nil, "bold", nil)
highlight("markdownHeadingDelimiter", colors.red, nil, nil, nil)
highlight("markdownHeadingRule", colors.comment, nil, nil, nil)
highlight("markdownId", colors.purple, nil, nil, nil)
highlight("markdownIdDeclaration", colors.cyan, nil, nil, nil)
highlight("markdownIdDelimiter", colors.purple, nil, nil, nil)
highlight("markdownItalic", colors.yellow, nil, "italic", nil)
highlight("markdownLinkDelimiter", colors.purple, nil, nil, nil)
highlight("markdownLinkText", colors.pink, nil, nil, nil)
highlight("markdownListMarker", colors.cyan, nil, nil, nil)
highlight("markdownOrderedListMarker", colors.red, nil, nil, nil)
highlight("markdownRule", colors.comment, nil, nil, nil)

--  Diff
highlight("diffAdded", colors.green, nil, nil, nil)
highlight("diffRemoved", colors.red, nil, nil, nil)
highlight("diffFileId", colors.yellow, nil, "bold,reverse", nil)
highlight("diffFile", colors.nontext, nil, nil, nil)
highlight("diffNewFile", colors.green, nil, nil, nil)
highlight("diffOldFile", colors.red, nil, nil, nil)

highlight("debugPc", nil, colors.cyan, nil, nil)
highlight("debugBreakpoint", colors.red, nil, "reverse", nil)

-- Git Signs
highlight('GitSignsAdd', colors.bright_green, nil, nil, nil)
highlight('GitSignsChange', colors.cyan, nil, nil, nil)
highlight('GitSignsDelete', colors.bright_red, nil, nil, nil)
highlight('GitSignsAddLn', colors.black, colors.bright_green, nil, nil)
highlight('GitSignsChangeLn', colors.black, colors.cyan, nil, nil)
highlight('GitSignsDeleteLn', colors.black, colors.bright_red, nil, nil)

-- Nvim compe
vim.api.nvim_command("highlight! link CompeDocumentation Pmenu")

-- Telescope
highlight("TelescopePromptBorder", colors.green, nil, nil, nil)
highlight("TelescopeResultsBorder", colors.bright_blue, nil, nil, nil)
highlight("TelescopePreviewBorder", colors.pink, nil, nil, nil)
highlight("TelescopeSelection", colors.white, colors.selection, nil, nil)
highlight("TelescopeMultiSelection", colors.purple, colors.selection, nil, nil)
highlight("TelescopeNormal", colors.fg, colors.bg, nil, nil)
highlight("TelescopeMatching", colors.green, nil, nil, nil)
highlight("TelescopePromptPrefix", colors.purple, nil, nil, nil)

-- NvimTree
highlight("NvimTreeRootFolder", colors.purple, nil, 'bold', nil)
highlight("NvimTreeNormal ", colors.bright_blue, nil, nil, nil)
highlight("NvimTreeGitDirty", colors.yellow, nil, nil, nil)
highlight("NvimTreeGitNew", colors.bright_green, nil, nil, nil)
highlight("NvimTreeImageFile", colors.pink, nil, nil, nil)
highlight("NvimTreeFolderIcon", colors.purple, nil, nil, nil)
highlight("NvimTreeIndentMarker", colors.nontext, nil, nil, nil)
highlight("NvimTreeEmptyFolderName", colors.comment, nil, nil, nil)
highlight("NvimTreeFolderName", colors.bright_blue, nil, nil, nil)
highlight("NvimTreeSpecialFile", colors.pink, nil, 'underline', nil)

-- Bufferline
highlight("BufferLineIndicatorSelected", colors.purple , nil, nil, nil)
highlight("BufferLineFill", nil , colors.black, nil, nil)

-- LSP
highlight('LspDiagnosticsDefaultError', colors.red, nil, nil, nil)
highlight('LspDiagnosticsDefaultWarning', colors.yellow, nil, nil, nil)
highlight('LspDiagnosticsDefaultInformation', colors.cyan, nil, nil, nil)
highlight('LspDiagnosticsDefaultHint', colors.cyan, nil, nil, nil)
highlight('LspDiagnosticsUnderlineError', colors.red, nil, 'undercurl', nil)
highlight('LspDiagnosticsUnderlineWarning', colors.yellow, nil, 'undercurl', nil)
highlight('LspDiagnosticsUnderlineInformation', colors.cyan, nil, 'undercurl', nil)
highlight('LspDiagnosticsUnderlineHint', colors.cyan, nil, 'undercurl', nil)
highlight('LspReferenceText', colors.orange, nil, nil, nil)
highlight('LspReferenceRead', colors.orange, nil, nil, nil)
highlight('LspReferenceWrite', colors.orange, nil, nil, nil)

highlight('NeogitNotificationInfo', colors.cyan, nil, nil, nil)
highlight('NeogitNotificationWarning', colors.yellow, nil, nil, nil)
highlight('NeogitNotificationError', colors.red, nil, nil, nil)

highlight('NeogitDiffAddHighlight', colors.green, nil, nil, nil)
highlight('NeogitDiffDeleteHighlight', colors.red, nil, nil, nil)
highlight('NeogitDiffContextHighlight', colors.bright_yellow, colors.bright_blue, nil, nil)
highlight('NeogitHunkHeader', colors.bright_green, colors.bright_white, nil, nil)
highlight('NeogitHunkHeaderHighlight', colors.bright_magenta, colors.bright_blue, nil, nil)

