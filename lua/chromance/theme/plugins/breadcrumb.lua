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
    BreadcrumbIconsColor = { fg = c.red },
    BreadcrumbIconsConstant = { fg = c.red },
    BreadcrumbIconsConstructor = { fg = c.green },
    BreadcrumbIconsEnum = { fg = c.cyan },
    BreadcrumbIconsEnumMember = { fg = c.cyan },
    BreadcrumbIconsEvent = { fg = c.cyan },
    BreadcrumbIconsField = { fg = c.cyan },
    BreadcrumbIconsFile = { fg = c.editorLineNumber.activeForeground },
    BreadcrumbIconsFolder = { fg = c.editorLineNumber.activeForeground },
    BreadcrumbIconsFunction = { fg = c.green },
    BreadcrumbIconsInterface = { fg = c.cyan },
    BreadcrumbIconsKey = { fg = c.cyan },
    BreadcrumbIconsKeyword = { fg = c.red },
    BreadcrumbIconsMethod = { fg = c.green },
    BreadcrumbIconsModule = { fg = c.cyan },
    BreadcrumbIconsNamespace = { fg = c.cyan },
    BreadcrumbIconsNull = { fg = c.red },
    BreadcrumbIconsNumber = { fg = c.red },
    BreadcrumbIconsObject = { fg = c.cyan },
    BreadcrumbIconsOperator = { fg = c.red },
    BreadcrumbIconsPackage = { fg = c.red },
    BreadcrumbIconsProperty = { fg = c.cyan },
    BreadcrumbIconsReference = { fg = c.red },
    BreadcrumbIconsSnippet = { fg = c.green },
    BreadcrumbIconsString = { fg = c.yellow },
    BreadcrumbIconsStruct = { fg = c.red },
    BreadcrumbIconsText = { fg = c.yellow },
    BreadcrumbIconsTypeParameter = { fg = c.cyan },
    BreadcrumbIconsUnit = { fg = c.red },
    BreadcrumbIconsVariable = { fg = c.cyan },
  }
end

return M
