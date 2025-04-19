local M = {}

--- @param c Colors The color palette
--- @param hp Helper
function M.get(c, _, hp)
  return {
    CmpItemAbbrMatch = { fg = c.editorSuggestWidget.highlightForeground, bold = true }, -- text match in order
    CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" }, -- text match not in order
    CmpItemMenu = { fg = c.editorSuggestWidget.foreground }, -- source of cmp. Ex: Lsp | Snippet
    CmpItemAbbr = { fg = c.editorSuggestWidget.foreground }, -- text that not match
    CmpItemAbbrDeprecated = { fg = c.editorSuggestWidget.foreground, strikethrough = true }, -- text not match of deprecated
    CmpItemKindArray = { fg = c.red },
    CmpItemKindBoolean = { fg = c.red },
    CmpItemKindClass = { fg = c.blue },
    CmpItemKindColor = { fg = c.red },
    CmpItemKindConstant = { fg = c.red },
    CmpItemKindConstructor = { fg = c.green },
    CmpItemKindEnum = { fg = c.blue },
    CmpItemKindEnumMember = { fg = c.blue },
    CmpItemKindEvent = { fg = c.blue },
    CmpItemKindField = { fg = c.blue },
    CmpItemKindFile = { fg = c.editorLineNumber.activeForeground },
    CmpItemKindFolder = { fg = c.editorLineNumber.activeForeground },
    CmpItemKindFunction = { fg = c.green },
    CmpItemKindInterface = { fg = c.blue },
    CmpItemKindKey = { fg = c.blue },
    CmpItemKindKeyword = { fg = c.red },
    CmpItemKindMethod = { fg = c.green },
    CmpItemKindModule = { fg = c.blue },
    CmpItemKindNamespace = { fg = c.blue },
    CmpItemKindNull = { fg = c.red },
    CmpItemKindNumber = { fg = c.red },
    CmpItemKindObject = { fg = c.blue },
    CmpItemKindOperator = { fg = c.red },
    CmpItemKindPackage = { fg = c.red },
    CmpItemKindProperty = { fg = c.blue },
    CmpItemKindReference = { fg = c.red },
    CmpItemKindSnippet = { fg = c.green },
    CmpItemKindString = { fg = c.yellow },
    CmpItemKindStruct = { fg = c.red },
    CmpItemKindText = { fg = c.yellow },
    CmpItemKindTypeParameter = { fg = c.blue },
    CmpItemKindUnit = { fg = c.red },
    CmpItemKindVariable = { fg = c.blue },
  }
end

return M
