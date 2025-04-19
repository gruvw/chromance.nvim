local M = {}

--- @param c Colors The color palette
--- @param config Config
--- @param hp Helper
function M.get(c, config, hp)
  local float_winBackgroundClear = vim.tbl_contains(config.background_clear, "float_win")
  return {
    BlinkCmpMenu = { bg = c.editorSuggestWidget.background, fg = hp.blend(c.editorSuggestWidget.foreground, 0.1, c.white) },
    -- BlinkCmpMenuSelection = float_winBackgroundClear and {
    --   bg = hp.blend(c.editorSuggestWidget.selectedBackground, 0.7),
    --   bold = true,
    -- } or {
    --   fg = hp.lighten(c.yellow, -15),
    --   bg = c.editorSuggestWidget.selectedBackground,
    --   bold = true,
    -- },
    BlinkCmpLabelDescription = { fg = c.white },
    BlinkCmpLabelDeprecated = { fg = nil, bg = nil, strikethrough = true },
    BlinkCmpGhostText = { link = "Comment" },
    BlinkCmpLabel = { fg = c.editorSuggestWidget.foreground },
    BlinkCmpLabelMatch = { fg = c.editorSuggestWidget.highlightForeground, bold = true },
    BlinkCmpSource = { fg = c.editorSuggestWidget.foreground },
    BlinkCmpKind = { fg = c.editorSuggestWidget.foreground },
    BlinkCmpKindArray = { fg = c.red },
    BlinkCmpKindBoolean = { fg = c.red },
    BlinkCmpKindClass = { fg = c.blue },
    BlinkCmpKindColor = { fg = c.red },
    BlinkCmpKindConstant = { fg = c.red },
    BlinkCmpKindConstructor = { fg = c.green },
    BlinkCmpKindEnum = { fg = c.blue },
    BlinkCmpKindEnumMember = { fg = c.blue },
    BlinkCmpKindEvent = { fg = c.blue },
    BlinkCmpKindField = { fg = c.blue },
    BlinkCmpKindFile = { fg = c.editorLineNumber.activeForeground },
    BlinkCmpKindFolder = { fg = c.editorLineNumber.activeForeground },
    BlinkCmpKindFunction = { fg = c.green },
    BlinkCmpKindInterface = { fg = c.blue },
    BlinkCmpKindKey = { fg = c.blue },
    BlinkCmpKindKeyword = { fg = c.red },
    BlinkCmpKindMethod = { fg = c.green },
    BlinkCmpKindModule = { fg = c.blue },
    BlinkCmpKindNamespace = { fg = c.blue },
    BlinkCmpKindNull = { fg = c.red },
    BlinkCmpKindNumber = { fg = c.red },
    BlinkCmpKindObject = { fg = c.blue },
    BlinkCmpKindOperator = { fg = c.red },
    BlinkCmpKindPackage = { fg = c.red },
    BlinkCmpKindProperty = { fg = c.blue },
    BlinkCmpKindReference = { fg = c.red },
    BlinkCmpKindSnippet = { fg = c.green },
    BlinkCmpKindString = { fg = c.yellow },
    BlinkCmpKindStruct = { fg = c.red },
    BlinkCmpKindText = { fg = c.yellow },
    BlinkCmpKindTypeParameter = { fg = c.blue },
    BlinkCmpKindUnit = { fg = c.red },
    BlinkCmpKindVariable = { fg = c.blue },
  }
end

return M
