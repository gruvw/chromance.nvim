local M = {}

--- @param c Colors The color palette
function M.get(c, _, _)
  return {
    WinBar = {
      bg = c.editor.background,
      fg = c.breadcrumb.foreground,
    },
    BreadcrumbIconsArray = { fg = c.red },
    BreadcrumbIconsBoolean = { fg = c.red },
    BreadcrumbIconsClass = { fg = c.blue },
    BreadcrumbIconsColor = { fg = c.red },
    BreadcrumbIconsConstant = { fg = c.red },
    BreadcrumbIconsConstructor = { fg = c.green },
    BreadcrumbIconsEnum = { fg = c.blue },
    BreadcrumbIconsEnumMember = { fg = c.blue },
    BreadcrumbIconsEvent = { fg = c.blue },
    BreadcrumbIconsField = { fg = c.blue },
    BreadcrumbIconsFile = { fg = c.editorLineNumber.activeForeground },
    BreadcrumbIconsFolder = { fg = c.editorLineNumber.activeForeground },
    BreadcrumbIconsFunction = { fg = c.green },
    BreadcrumbIconsInterface = { fg = c.blue },
    BreadcrumbIconsKey = { fg = c.blue },
    BreadcrumbIconsKeyword = { fg = c.red },
    BreadcrumbIconsMethod = { fg = c.green },
    BreadcrumbIconsModule = { fg = c.blue },
    BreadcrumbIconsNamespace = { fg = c.blue },
    BreadcrumbIconsNull = { fg = c.red },
    BreadcrumbIconsNumber = { fg = c.red },
    BreadcrumbIconsObject = { fg = c.blue },
    BreadcrumbIconsOperator = { fg = c.red },
    BreadcrumbIconsPackage = { fg = c.red },
    BreadcrumbIconsProperty = { fg = c.blue },
    BreadcrumbIconsReference = { fg = c.red },
    BreadcrumbIconsSnippet = { fg = c.green },
    BreadcrumbIconsString = { fg = c.yellow },
    BreadcrumbIconsStruct = { fg = c.red },
    BreadcrumbIconsText = { fg = c.yellow },
    BreadcrumbIconsTypeParameter = { fg = c.blue },
    BreadcrumbIconsUnit = { fg = c.red },
    BreadcrumbIconsVariable = { fg = c.blue },
  }
end

return M
