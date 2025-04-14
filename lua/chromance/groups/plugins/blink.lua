local M = {}

--- @param c Colors The color palette
--- @param config Config
--- @param hp Helper
function M.get(c, config, hp)
  local float_winBackgroundClear = vim.tbl_contains(config.background_clear, "float_win")
  return {
    BlinkCmpMenu = { bg = c.editorSuggestWidget.background, fg = hp.lighten(c.editorSuggestWidget.foreground, -15) },
    -- BlinkCmpMenuSelection = float_winBackgroundClear and {
    --   bg = hp.blend(c.editorSuggestWidget.selectedBackground, 0.7),
    --   bold = true,
    -- } or {
    --   fg = hp.lighten(c.yellow, -15),
    --   bg = c.editorSuggestWidget.selectedBackground,
    --   bold = true,
    -- },
    BlinkCmpLabelDescription = { fg = hp.lighten(c.dimmed1, 3) },
    BlinkCmpLabelDeprecated = { fg = nil, bg = nil, strikethrough = true },
    BlinkCmpGhostText = { link = "Comment" },
    BlinkCmpLabel = { fg = hp.lighten(c.editorSuggestWidget.foreground, -15) },
    BlinkCmpLabelMatch = { fg = c.editorSuggestWidget.highlightForeground, bold = true },
    BlinkCmpSource = { fg = c.editorSuggestWidget.foreground },
    BlinkCmpKind = { fg = hp.lighten(c.editorSuggestWidget.foreground, -15) },
    BlinkCmpKindArray = { fg = c.red },
    BlinkCmpKindBoolean = { fg = c.red },
    BlinkCmpKindClass = { fg = c.cyan },
    BlinkCmpKindColor = { fg = c.magenta },
    BlinkCmpKindConstant = { fg = c.magenta },
    BlinkCmpKindConstructor = { fg = c.green },
    BlinkCmpKindEnum = { fg = c.blue },
    BlinkCmpKindEnumMember = { fg = c.blue },
    BlinkCmpKindEvent = { fg = c.blue },
    BlinkCmpKindField = { fg = c.blue },
    BlinkCmpKindFile = { fg = c.editorLineNumber.activeForeground },
    BlinkCmpKindFolder = { fg = c.editorLineNumber.activeForeground },
    BlinkCmpKindFunction = { fg = c.green },
    BlinkCmpKindInterface = { fg = c.cyan },
    BlinkCmpKindKey = { fg = c.blue },
    BlinkCmpKindKeyword = { fg = c.red },
    BlinkCmpKindMethod = { fg = c.green },
    BlinkCmpKindModule = { fg = c.cyan },
    BlinkCmpKindNamespace = { fg = c.cyan },
    BlinkCmpKindNull = { fg = c.magenta },
    BlinkCmpKindNumber = { fg = c.magenta },
    BlinkCmpKindObject = { fg = c.cyan },
    BlinkCmpKindOperator = { fg = c.red },
    BlinkCmpKindPackage = { fg = c.magenta },
    BlinkCmpKindProperty = { fg = c.blue },
    BlinkCmpKindReference = { fg = c.magenta },
    BlinkCmpKindSnippet = { fg = c.green },
    BlinkCmpKindString = { fg = c.yellow },
    BlinkCmpKindStruct = { fg = c.red },
    BlinkCmpKindText = { fg = c.yellow },
    BlinkCmpKindTypeParameter = { fg = c.blue },
    BlinkCmpKindUnit = { fg = c.magenta },
    BlinkCmpKindVariable = { fg = c.cyan },
  }
end

return M
