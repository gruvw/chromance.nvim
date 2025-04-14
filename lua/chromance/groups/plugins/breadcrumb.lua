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
    BreadcrumbIconsClass = { fg = c.cyan },
    BreadcrumbIconsColor = { fg = c.magenta },
    BreadcrumbIconsConstant = { fg = c.magenta },
    BreadcrumbIconsConstructor = { fg = c.green },
    BreadcrumbIconsEnum = { fg = c.blue },
    BreadcrumbIconsEnumMember = { fg = c.blue },
    BreadcrumbIconsEvent = { fg = c.blue },
    BreadcrumbIconsField = { fg = c.blue },
    BreadcrumbIconsFile = { fg = c.editorLineNumber.activeForeground },
    BreadcrumbIconsFolder = { fg = c.editorLineNumber.activeForeground },
    BreadcrumbIconsFunction = { fg = c.green },
    BreadcrumbIconsInterface = { fg = c.cyan },
    BreadcrumbIconsKey = { fg = c.blue },
    BreadcrumbIconsKeyword = { fg = c.red },
    BreadcrumbIconsMethod = { fg = c.green },
    BreadcrumbIconsModule = { fg = c.cyan },
    BreadcrumbIconsNamespace = { fg = c.cyan },
    BreadcrumbIconsNull = { fg = c.magenta },
    BreadcrumbIconsNumber = { fg = c.magenta },
    BreadcrumbIconsObject = { fg = c.cyan },
    BreadcrumbIconsOperator = { fg = c.red },
    BreadcrumbIconsPackage = { fg = c.magenta },
    BreadcrumbIconsProperty = { fg = c.blue },
    BreadcrumbIconsReference = { fg = c.magenta },
    BreadcrumbIconsSnippet = { fg = c.green },
    BreadcrumbIconsString = { fg = c.yellow },
    BreadcrumbIconsStruct = { fg = c.red },
    BreadcrumbIconsText = { fg = c.yellow },
    BreadcrumbIconsTypeParameter = { fg = c.blue },
    BreadcrumbIconsUnit = { fg = c.magenta },
    BreadcrumbIconsVariable = { fg = c.cyan },
  }
end

return M
