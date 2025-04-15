local M = {}

--- @param c Colors The color palette
function M.get(c, _, _)
  return {
    NavicIconsArray = { fg = c.red },
    NavicIconsBoolean = { fg = c.red },
    NavicIconsClass = { fg = c.cyan },
    NavicIconsColor = { fg = c.red },
    NavicIconsConstant = { fg = c.red },
    NavicIconsConstructor = { fg = c.green },
    NavicIconsEnum = { fg = c.cyan },
    NavicIconsEnumMember = { fg = c.cyan },
    NavicIconsEvent = { fg = c.cyan },
    NavicIconsField = { fg = c.cyan },
    NavicIconsFile = { fg = c.editorLineNumber.activeForeground },
    NavicIconsFolder = { fg = c.editorLineNumber.activeForeground },
    NavicIconsFunction = { fg = c.green },
    NavicIconsInterface = { fg = c.cyan },
    NavicIconsKey = { fg = c.cyan },
    NavicIconsKeyword = { fg = c.red },
    NavicIconsMethod = { fg = c.green },
    NavicIconsModule = { fg = c.cyan },
    NavicIconsNamespace = { fg = c.cyan },
    NavicIconsNull = { fg = c.red },
    NavicIconsNumber = { fg = c.red },
    NavicIconsObject = { fg = c.cyan },
    NavicIconsOperator = { fg = c.red },
    NavicIconsPackage = { fg = c.red },
    NavicIconsProperty = { fg = c.cyan },
    NavicIconsReference = { fg = c.red },
    NavicIconsSnippet = { fg = c.green },
    NavicIconsString = { fg = c.yellow },
    NavicIconsStruct = { fg = c.red },
    NavicIconsText = { fg = c.yellow },
    NavicIconsTypeParameter = { fg = c.cyan },
    NavicIconsUnit = { fg = c.red },
    NavicIconsVariable = { fg = c.cyan },
  }
end

return M
