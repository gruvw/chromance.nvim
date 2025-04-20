local M = {}

--- @param c Colors The color palette
function M.get(c, _, _)
  return {
    NavicIconsArray = { fg = c.red },
    NavicIconsBoolean = { fg = c.purple },
    NavicIconsClass = { fg = c.blue },
    NavicIconsColor = { fg = c.red },
    NavicIconsConstant = { fg = c.red },
    NavicIconsConstructor = { fg = c.green },
    NavicIconsEnum = { fg = c.blue },
    NavicIconsEnumMember = { fg = c.blue },
    NavicIconsEvent = { fg = c.blue },
    NavicIconsField = { fg = c.blue },
    NavicIconsFile = { fg = c.editorLineNumber.activeForeground },
    NavicIconsFolder = { fg = c.editorLineNumber.activeForeground },
    NavicIconsFunction = { fg = c.green },
    NavicIconsInterface = { fg = c.blue },
    NavicIconsKey = { fg = c.blue },
    NavicIconsKeyword = { fg = c.red },
    NavicIconsMethod = { fg = c.green },
    NavicIconsModule = { fg = c.blue },
    NavicIconsNamespace = { fg = c.blue },
    NavicIconsNull = { fg = c.red },
    NavicIconsNumber = { fg = c.red },
    NavicIconsObject = { fg = c.blue },
    NavicIconsOperator = { fg = c.red },
    NavicIconsPackage = { fg = c.red },
    NavicIconsProperty = { fg = c.blue },
    NavicIconsReference = { fg = c.red },
    NavicIconsSnippet = { fg = c.green },
    NavicIconsString = { fg = c.yellow },
    NavicIconsStruct = { fg = c.red },
    NavicIconsText = { fg = c.yellow },
    NavicIconsTypeParameter = { fg = c.blue },
    NavicIconsUnit = { fg = c.red },
    NavicIconsVariable = { fg = c.blue },
  }
end

return M
