-- Cosmic Latte - A solarized-inspired theme with cosmic vibes
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.o.background = "light"
vim.g.colors_name = "cosmic-latte"
vim.o.termguicolors = true

-- Color palette inspired by solarized with cosmic latte additions
local colors = {
  -- Base solarized colors
  base03 = "#002b36", -- darkest
  base02 = "#073642",
  base01 = "#586e75", -- optional emphasized content
  base00 = "#657b83", -- body text / default code / primary content
  base0 = "#839496",  -- comments / secondary content
  base1 = "#93a1a1",  -- emphasized content
  base2 = "#eee8d5",  -- background highlights
  base3 = "#fdf6e3",  -- background
  
  -- Accent colors
  yellow = "#b58900",
  orange = "#cb4b16",
  red = "#dc322f",
  magenta = "#d33682",
  violet = "#6c71c4",
  blue = "#268bd2",
  cyan = "#2aa198",
  green = "#859900",
  
  -- Cosmic latte special color
  cosmic = "#ff8e7f", -- The requested color
  cosmic_dark = "#e67a6b",
  cosmic_light = "#ffb5aa",
}

-- Helper function to set highlights
local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Editor colors
hl("Normal", { fg = colors.base00, bg = colors.base3 })
hl("NormalFloat", { fg = colors.base00, bg = colors.base2 })
hl("Cursor", { fg = colors.base3, bg = colors.cosmic })
hl("CursorLine", { bg = colors.base2 })
hl("CursorColumn", { bg = colors.base2 })
hl("LineNr", { fg = colors.base1 })
hl("CursorLineNr", { fg = colors.cosmic, bold = true })
hl("SignColumn", { fg = colors.base1, bg = colors.base3 })
hl("ColorColumn", { bg = colors.base2 })

-- Splits and windows
hl("VertSplit", { fg = colors.base1 })
hl("WinSeparator", { fg = colors.base1 })
hl("StatusLine", { fg = colors.base1, bg = colors.base2 })
hl("StatusLineNC", { fg = colors.base01, bg = colors.base2 })
hl("TabLine", { fg = colors.base0, bg = colors.base2 })
hl("TabLineFill", { fg = colors.base0, bg = colors.base2 })
hl("TabLineSel", { fg = colors.base01, bg = colors.base3 })

-- Search and selection
hl("Search", { fg = colors.base3, bg = colors.yellow })
hl("IncSearch", { fg = colors.base3, bg = colors.cosmic })
hl("Visual", { bg = colors.base2 })
hl("VisualNOS", { bg = colors.base2 })

-- Syntax highlighting
hl("Comment", { fg = colors.base1, italic = true })
hl("Constant", { fg = colors.cyan })
hl("String", { fg = colors.cyan })
hl("Character", { fg = colors.cyan })
hl("Number", { fg = colors.cyan })
hl("Boolean", { fg = colors.cyan })
hl("Float", { fg = colors.cyan })

hl("Identifier", { fg = colors.blue })
hl("Function", { fg = colors.blue })

hl("Statement", { fg = colors.green })
hl("Conditional", { fg = colors.green })
hl("Repeat", { fg = colors.green })
hl("Label", { fg = colors.green })
hl("Operator", { fg = colors.green })
hl("Keyword", { fg = colors.green })
hl("Exception", { fg = colors.green })

hl("PreProc", { fg = colors.orange })
hl("Include", { fg = colors.orange })
hl("Define", { fg = colors.orange })
hl("Macro", { fg = colors.orange })
hl("PreCondit", { fg = colors.orange })

hl("Type", { fg = colors.yellow })
hl("StorageClass", { fg = colors.yellow })
hl("Structure", { fg = colors.yellow })
hl("Typedef", { fg = colors.yellow })

hl("Special", { fg = colors.red })
hl("SpecialChar", { fg = colors.red })
hl("Tag", { fg = colors.red })
hl("Delimiter", { fg = colors.red })
hl("SpecialComment", { fg = colors.red })
hl("Debug", { fg = colors.red })

-- Errors and warnings
hl("Error", { fg = colors.red, bold = true })
hl("ErrorMsg", { fg = colors.red, bg = colors.base3 })
hl("WarningMsg", { fg = colors.orange })
hl("Todo", { fg = colors.cosmic, bg = colors.base3, bold = true })

-- Diff colors
hl("DiffAdd", { fg = colors.green, bg = colors.base2 })
hl("DiffChange", { fg = colors.yellow, bg = colors.base2 })
hl("DiffDelete", { fg = colors.red, bg = colors.base2 })
hl("DiffText", { fg = colors.blue, bg = colors.base2 })

-- Git signs
hl("GitSignsAdd", { fg = colors.green })
hl("GitSignsChange", { fg = colors.yellow })
hl("GitSignsDelete", { fg = colors.red })

-- LSP and diagnostics
hl("DiagnosticError", { fg = colors.red })
hl("DiagnosticWarn", { fg = colors.orange })
hl("DiagnosticInfo", { fg = colors.blue })
hl("DiagnosticHint", { fg = colors.cyan })

-- Telescope
hl("TelescopeNormal", { fg = colors.base00, bg = colors.base3 })
hl("TelescopeBorder", { fg = colors.cosmic, bg = colors.base3 })
hl("TelescopePromptBorder", { fg = colors.cosmic, bg = colors.base3 })
hl("TelescopeResultsBorder", { fg = colors.cosmic, bg = colors.base3 })
hl("TelescopePreviewBorder", { fg = colors.cosmic, bg = colors.base3 })
hl("TelescopeSelection", { fg = colors.base01, bg = colors.base2 })
hl("TelescopeSelectionCaret", { fg = colors.cosmic })
hl("TelescopeMultiSelection", { fg = colors.cosmic })
hl("TelescopeMatching", { fg = colors.cosmic, bold = true })

-- Alpha dashboard
hl("AlphaHeader", { fg = colors.cosmic })
hl("AlphaButtons", { fg = colors.blue })
hl("AlphaShortcut", { fg = colors.orange })
hl("AlphaFooter", { fg = colors.base1 })

-- Treesitter
hl("@variable", { fg = colors.base00 })
hl("@variable.builtin", { fg = colors.red })
hl("@variable.parameter", { fg = colors.base00 })
hl("@variable.member", { fg = colors.base00 })

hl("@constant", { fg = colors.cyan })
hl("@constant.builtin", { fg = colors.cyan })
hl("@constant.macro", { fg = colors.cyan })

hl("@string", { fg = colors.cyan })
hl("@string.escape", { fg = colors.red })
hl("@string.special", { fg = colors.red })

hl("@character", { fg = colors.cyan })
hl("@character.special", { fg = colors.red })

hl("@number", { fg = colors.cyan })
hl("@boolean", { fg = colors.cyan })
hl("@float", { fg = colors.cyan })

hl("@function", { fg = colors.blue })
hl("@function.builtin", { fg = colors.blue })
hl("@function.call", { fg = colors.blue })
hl("@function.macro", { fg = colors.orange })

hl("@method", { fg = colors.blue })
hl("@method.call", { fg = colors.blue })

hl("@constructor", { fg = colors.yellow })

hl("@parameter", { fg = colors.base00 })

hl("@keyword", { fg = colors.green })
hl("@keyword.function", { fg = colors.green })
hl("@keyword.operator", { fg = colors.green })
hl("@keyword.return", { fg = colors.green })

hl("@conditional", { fg = colors.green })
hl("@repeat", { fg = colors.green })
hl("@label", { fg = colors.green })

hl("@operator", { fg = colors.green })

hl("@exception", { fg = colors.green })

hl("@type", { fg = colors.yellow })
hl("@type.builtin", { fg = colors.yellow })
hl("@type.definition", { fg = colors.yellow })

hl("@storageclass", { fg = colors.yellow })
hl("@attribute", { fg = colors.yellow })
hl("@field", { fg = colors.base00 })
hl("@property", { fg = colors.base00 })

hl("@include", { fg = colors.orange })
hl("@preproc", { fg = colors.orange })
hl("@define", { fg = colors.orange })
hl("@macro", { fg = colors.orange })

hl("@debug", { fg = colors.red })

hl("@tag", { fg = colors.red })
hl("@tag.attribute", { fg = colors.base00 })
hl("@tag.delimiter", { fg = colors.red })

hl("@comment", { fg = colors.base1, italic = true })

hl("@punctuation.delimiter", { fg = colors.red })
hl("@punctuation.bracket", { fg = colors.red })
hl("@punctuation.special", { fg = colors.red })

-- Special cosmic latte highlights
hl("CosmicAccent", { fg = colors.cosmic, bold = true })
hl("CosmicSpecial", { fg = colors.cosmic_dark, bg = colors.cosmic_light })