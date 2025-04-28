local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    WinBar = {
      bg = colors.editor.background,
      fg = colors.breadcrumb.foreground,
    },
    BreadcrumbIconsArray = { fg = colors.red },
    BreadcrumbIconsBoolean = { fg = colors.purple },
    BreadcrumbIconsClass = { fg = colors.blue },
    BreadcrumbIconsColor = { fg = colors.red },
    BreadcrumbIconsConstant = { fg = colors.red },
    BreadcrumbIconsConstructor = { fg = colors.green },
    BreadcrumbIconsEnum = { fg = colors.blue },
    BreadcrumbIconsEnumMember = { fg = colors.blue },
    BreadcrumbIconsEvent = { fg = colors.blue },
    BreadcrumbIconsField = { fg = colors.blue },
    BreadcrumbIconsFile = { fg = colors.editorLineNumber.activeForeground },
    BreadcrumbIconsFolder = { fg = colors.editorLineNumber.activeForeground },
    BreadcrumbIconsFunction = { fg = colors.green },
    BreadcrumbIconsInterface = { fg = colors.blue },
    BreadcrumbIconsKey = { fg = colors.blue },
    BreadcrumbIconsKeyword = { fg = colors.red },
    BreadcrumbIconsMethod = { fg = colors.green },
    BreadcrumbIconsModule = { fg = colors.blue },
    BreadcrumbIconsNamespace = { fg = colors.blue },
    BreadcrumbIconsNull = { fg = colors.red },
    BreadcrumbIconsNumber = { fg = colors.red },
    BreadcrumbIconsObject = { fg = colors.blue },
    BreadcrumbIconsOperator = { fg = colors.red },
    BreadcrumbIconsPackage = { fg = colors.red },
    BreadcrumbIconsProperty = { fg = colors.blue },
    BreadcrumbIconsReference = { fg = colors.red },
    BreadcrumbIconsSnippet = { fg = colors.green },
    BreadcrumbIconsString = { fg = colors.yellow },
    BreadcrumbIconsStruct = { fg = colors.red },
    BreadcrumbIconsText = { fg = colors.yellow },
    BreadcrumbIconsTypeParameter = { fg = colors.blue },
    BreadcrumbIconsUnit = { fg = colors.red },
    BreadcrumbIconsVariable = { fg = colors.blue },
  }
end

return M
