local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    NavicIconsArray = { fg = colors.red },
    NavicIconsBoolean = { fg = colors.purple },
    NavicIconsClass = { fg = colors.blue },
    NavicIconsColor = { fg = colors.red },
    NavicIconsConstant = { fg = colors.red },
    NavicIconsConstructor = { fg = colors.green },
    NavicIconsEnum = { fg = colors.blue },
    NavicIconsEnumMember = { fg = colors.blue },
    NavicIconsEvent = { fg = colors.blue },
    NavicIconsField = { fg = colors.blue },
    NavicIconsFile = { fg = colors.editorLineNumber.activeForeground },
    NavicIconsFolder = { fg = colors.editorLineNumber.activeForeground },
    NavicIconsFunction = { fg = colors.green },
    NavicIconsInterface = { fg = colors.blue },
    NavicIconsKey = { fg = colors.blue },
    NavicIconsKeyword = { fg = colors.red },
    NavicIconsMethod = { fg = colors.green },
    NavicIconsModule = { fg = colors.blue },
    NavicIconsNamespace = { fg = colors.blue },
    NavicIconsNull = { fg = colors.red },
    NavicIconsNumber = { fg = colors.red },
    NavicIconsObject = { fg = colors.blue },
    NavicIconsOperator = { fg = colors.red },
    NavicIconsPackage = { fg = colors.red },
    NavicIconsProperty = { fg = colors.blue },
    NavicIconsReference = { fg = colors.red },
    NavicIconsSnippet = { fg = colors.green },
    NavicIconsString = { fg = colors.yellow },
    NavicIconsStruct = { fg = colors.red },
    NavicIconsText = { fg = colors.yellow },
    NavicIconsTypeParameter = { fg = colors.blue },
    NavicIconsUnit = { fg = colors.red },
    NavicIconsVariable = { fg = colors.blue },
  }
end

return M
