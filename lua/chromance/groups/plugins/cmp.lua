local M = {}

--- @param c Colors The color palette
--- @param hp Helper
function M.get(c, _, hp)
  return {
    CmpItemAbbrMatch = { fg = c.editorSuggestWidget.highlightForeground, bold = true }, -- text match in order
    CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" }, -- text match not in order
    CmpItemMenu = { fg = hp.lighten(c.editorSuggestWidget.foreground, -15) }, -- source of cmp. Ex: Lsp | Snippet
    CmpItemAbbr = { fg = c.editorSuggestWidget.foreground }, -- text that not match
    CmpItemAbbrDeprecated = { fg = c.editorSuggestWidget.foreground, strikethrough = true }, -- text not match of deprecated
    CmpItemKindArray = { fg = c.red },
    CmpItemKindBoolean = { fg = c.red },
    CmpItemKindClass = { fg = c.cyan },
    CmpItemKindColor = { fg = c.magenta },
    CmpItemKindConstant = { fg = c.magenta },
    CmpItemKindConstructor = { fg = c.green },
    CmpItemKindEnum = { fg = c.blue },
    CmpItemKindEnumMember = { fg = c.blue },
    CmpItemKindEvent = { fg = c.blue },
    CmpItemKindField = { fg = c.blue },
    CmpItemKindFile = { fg = c.editorLineNumber.activeForeground },
    CmpItemKindFolder = { fg = c.editorLineNumber.activeForeground },
    CmpItemKindFunction = { fg = c.green },
    CmpItemKindInterface = { fg = c.cyan },
    CmpItemKindKey = { fg = c.blue },
    CmpItemKindKeyword = { fg = c.red },
    CmpItemKindMethod = { fg = c.green },
    CmpItemKindModule = { fg = c.cyan },
    CmpItemKindNamespace = { fg = c.cyan },
    CmpItemKindNull = { fg = c.magenta },
    CmpItemKindNumber = { fg = c.magenta },
    CmpItemKindObject = { fg = c.cyan },
    CmpItemKindOperator = { fg = c.red },
    CmpItemKindPackage = { fg = c.magenta },
    CmpItemKindProperty = { fg = c.blue },
    CmpItemKindReference = { fg = c.magenta },
    CmpItemKindSnippet = { fg = c.green },
    CmpItemKindString = { fg = c.yellow },
    CmpItemKindStruct = { fg = c.red },
    CmpItemKindText = { fg = c.yellow },
    CmpItemKindTypeParameter = { fg = c.blue },
    CmpItemKindUnit = { fg = c.magenta },
    CmpItemKindVariable = { fg = c.cyan },
  }
end

return M
