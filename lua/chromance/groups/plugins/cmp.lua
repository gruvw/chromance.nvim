local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    CmpItemAbbrMatch = colors.groups.match_secondary, -- text match in order
    CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" }, -- text match not in order
    CmpItemMenu = { fg = colors.editorSuggestWidget.foreground }, -- source of cmp. Ex: Lsp | Snippet
    CmpItemAbbr = { fg = colors.editorSuggestWidget.foreground }, -- text that not match
    CmpItemAbbrDeprecated = { fg = colors.editorSuggestWidget.foreground, strikethrough = true }, -- text not match of deprecated
    CmpItemKindArray = { fg = colors.red },
    CmpItemKindBoolean = { fg = colors.purple },
    CmpItemKindClass = { fg = colors.blue },
    CmpItemKindColor = { fg = colors.red },
    CmpItemKindConstant = { fg = colors.red },
    CmpItemKindConstructor = { fg = colors.green },
    CmpItemKindEnum = { fg = colors.blue },
    CmpItemKindEnumMember = { fg = colors.blue },
    CmpItemKindEvent = { fg = colors.blue },
    CmpItemKindField = { fg = colors.blue },
    CmpItemKindFile = { fg = colors.editorLineNumber.activeForeground },
    CmpItemKindFolder = { fg = colors.editorLineNumber.activeForeground },
    CmpItemKindFunction = { fg = colors.green },
    CmpItemKindInterface = { fg = colors.blue },
    CmpItemKindKey = { fg = colors.blue },
    CmpItemKindKeyword = { fg = colors.red },
    CmpItemKindMethod = { fg = colors.green },
    CmpItemKindModule = { fg = colors.blue },
    CmpItemKindNamespace = { fg = colors.blue },
    CmpItemKindNull = { fg = colors.red },
    CmpItemKindNumber = { fg = colors.red },
    CmpItemKindObject = { fg = colors.blue },
    CmpItemKindOperator = { fg = colors.red },
    CmpItemKindPackage = { fg = colors.red },
    CmpItemKindProperty = { fg = colors.blue },
    CmpItemKindReference = { fg = colors.red },
    CmpItemKindSnippet = { fg = colors.green },
    CmpItemKindString = { fg = colors.yellow },
    CmpItemKindStruct = { fg = colors.red },
    CmpItemKindText = { fg = colors.yellow },
    CmpItemKindTypeParameter = { fg = colors.blue },
    CmpItemKindUnit = { fg = colors.red },
    CmpItemKindVariable = { fg = colors.blue },
  }
end

return M
