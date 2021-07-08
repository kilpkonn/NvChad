local cmd = vim.cmd

local global_theme = "themes/" .. vim.g.nvchad_theme
local colors = require(global_theme)

local white = colors.white
local darker_black = colors.darker_black
local black = colors.black
local light_grey = colors.light_grey
local grey = colors.grey
local light_grey = colors.light_grey
local grey_fg = colors.grey_fg
local red = colors.red
local line = colors.line
local green = colors.green
local nord_blue = colors.nord_blue
local blue = colors.blue
local yellow = colors.yellow
local purple = colors.purple

-- for guifg , bg

local function fg(group, color)
    cmd("hi " .. group .. " guifg=" .. color)
end

local function bg(group, color)
    cmd("hi " .. group .. " guibg=" .. color)
end

local function fg_bg(group, fgcol, bgcol)
    cmd("hi " .. group .. " guifg=" .. fgcol .. " guibg=" .. bgcol)
end

-- blankline

fg("IndentBlanklineChar", line)

-- misc --
fg("LineNr", grey)
fg("Comment", light_grey)
fg("NvimInternalError", red)
fg("VertSplit", line)
fg("EndOfBuffer", black)

-- Pmenu
bg("Pmenu", black)
bg("PmenuSbar", black) -- XXX
bg("PmenuSel", green)
bg("PmenuThumb", nord_blue)

-- inactive statuslines as thin splitlines
cmd("hi! StatusLineNC gui=underline guifg=" .. line)

-- line n.o
cmd "hi clear CursorLine"
fg("cursorlinenr", white)

-- git signs ---
bg("DiffAdd", "#012800", "none")
bg("DiffChange", "#082040", "none")
bg("DiffModified", "#340001", "none")

-- NvimTree
fg("NvimTreeFolderIcon", blue)
fg("NvimTreeFolderName", blue)
fg("NvimTreeOpenedFolderName", blue)
fg("NvimTreeEmptyFolderName", blue)
fg("NvimTreeIndentMarker", black) -- XXX
fg("NvimTreeVertSplit", darker_black)
bg("NvimTreeVertSplit", darker_black)
fg("NvimTreeEndOfBuffer", darker_black)

fg("NvimTreeRootFolder", darker_black)
bg("NvimTreeNormal", darker_black)
fg_bg("NvimTreeStatuslineNc", darker_black, darker_black)
fg_bg("NvimTreeWindowPicker", red, black) -- XXX

-- telescope
fg("TelescopeBorder", line)
fg("TelescopePromptBorder", line)
fg("TelescopeResultsBorder", line)
fg("TelescopePreviewBorder", grey)

-- LspDiagnostics ---

-- error / warnings
fg("LspDiagnosticsSignError", red)
fg("LspDiagnosticsVirtualTextError", red)
fg("LspDiagnosticsSignWarning", yellow)
fg("LspDiagnosticsVirtualTextWarning", yellow)

-- info
fg("LspDiagnosticsSignInformation", green)
fg("LspDiagnosticsVirtualTextInformation", green)

-- hint
fg("LspDiagnosticsSignHint", purple)
fg("LspDiagnosticsVirtualTextHint", purple)

-- bufferline

fg_bg("BufferLineFill", grey_fg, black) -- XXX
fg_bg("BufferLineBackground", light_grey, black) --- XXX

fg_bg("BufferLineBufferVisible", light_grey, black) --- XXX
fg_bg("BufferLineBufferSelected", white, black)

cmd "hi BufferLineBufferSelected gui=bold"

-- tabs
fg_bg("BufferLineTab", light_grey, black) -- XXXX
fg_bg("BufferLineTabSelected", black, nord_blue)
fg_bg("BufferLineTabClose", red, black)

fg_bg("BufferLineIndicator", black, black) -- XXXX
fg_bg("BufferLineIndicatorSelected", black, black)

-- separators
fg_bg("BufferLineSeparator", black, black)
fg_bg("BufferLineSeparatorVisible", black, black)
fg_bg("BufferLineSeparatorSelected", black, black)

-- modified buffers
fg_bg("BufferLineModified", red, black)
fg_bg("BufferLineModifiedVisible", red, black)
fg_bg("BufferLineModifiedSelected", green, black)

-- close buttons
fg_bg("BufferLineCLoseButtonVisible", light_grey, black)
fg_bg("BufferLineCLoseButton", light_grey, black)
fg_bg("BufferLineCLoseButtonSelected", red, black)

-- dashboard

fg("DashboardHeader", grey_fg)
fg("DashboardCenter", grey_fg)
fg("DashboardShortcut", grey_fg)
fg("DashboardFooter", grey_fg)

-- Other
fg("TSField", "#D2E4F4")
fg("TSFloat", "#B587D4")
fg("TSNumber", "#B587D4")
fg("TSBoolean", "#B587D4")
fg("TSOperator", "#66C1F8")
fg("TSNamespace", "#51D3D3")
fg("TSPunctBracket", "#E89A46")
fg("TSTypeBuiltin", "#BA6BD7")
fg("TSConstant", "#E89A46")
fg("TSConstantBuiltin", "#BA6BD7")

-- set bg color for nvim ( so nvim wont use terminal bg)

-- NvChad themes bg colors
-- Onedark #1e222a
-- Gruvbox  #222526
-- tomorrow night #1d1f21

bg("Normal", black) -- change the hex color here.
