local M = {}

--- @param c Colors The color palette
function M.get(c, _, _)
  return {
    NavicIconsArray = { fg = c.red },
    NavicIconsBoolean = { fg = c.red },
    NavicIconsClass = { fg = c.cyan },
    NavicIconsColor = { fg = c.magenta },
    NavicIconsConstant = { fg = c.magenta },
    NavicIconsConstructor = { fg = c.green },
    NavicIconsEnum = { fg = c.blue },
    NavicIconsEnumMember = { fg = c.blue },
    NavicIconsEvent = { fg = c.blue },
    NavicIconsField = { fg = c.blue },
    NavicIconsFile = { fg = c.editorLineNumber.activeForeground },
    NavicIconsFolder = { fg = c.editorLineNumber.activeForeground },
    NavicIconsFunction = { fg = c.green },
    NavicIconsInterface = { fg = c.cyan },
    NavicIconsKey = { fg = c.blue },
    NavicIconsKeyword = { fg = c.red },
    NavicIconsMethod = { fg = c.green },
    NavicIconsModule = { fg = c.cyan },
    NavicIconsNamespace = { fg = c.cyan },
    NavicIconsNull = { fg = c.magenta },
    NavicIconsNumber = { fg = c.magenta },
    NavicIconsObject = { fg = c.cyan },
    NavicIconsOperator = { fg = c.red },
    NavicIconsPackage = { fg = c.magenta },
    NavicIconsProperty = { fg = c.blue },
    NavicIconsReference = { fg = c.magenta },
    NavicIconsSnippet = { fg = c.green },
    NavicIconsString = { fg = c.yellow },
    NavicIconsStruct = { fg = c.red },
    NavicIconsText = { fg = c.yellow },
    NavicIconsTypeParameter = { fg = c.blue },
    NavicIconsUnit = { fg = c.magenta },
    NavicIconsVariable = { fg = c.cyan },
  }
end

return M
