local M = {}

--- @param c Colors The color palette
function M.get(c, _)
  return {
    AerialLine = { bg = c.editor.selectionHighlightBackground },
    AerialArray = { fg = c.red },
    AerialBoolean = { fg = c.purple },
    AerialClass = { fg = c.blue },
    AerialConstant = { fg = c.red },
    AerialConstructor = { fg = c.green },
    AerialEnum = { fg = c.blue },
    AerialEnumMember = { fg = c.red },
    AerialEvent = { fg = c.blue },
    AerialField = { fg = c.white },
    AerialFile = { fg = c.green },
    AerialFunction = { fg = c.green },
    AerialInterface = { fg = c.green },
    AerialKey = { fg = c.red },
    AerialMethod = { fg = c.green },
    AerialModule = { fg = c.blue },
    AerialNamespace = { fg = c.white },
    AerialNull = { fg = c.red },
    AerialNumber = { fg = c.red },
    AerialObject = { fg = c.red },
    AerialOperator = { fg = c.red },
    AerialPackage = { fg = c.blue },
    AerialProperty = { fg = c.blue },
    AerialString = { fg = c.yellow },
    AerialStruct = { fg = c.blue },
    AerialTypeParameter = { fg = c.red },
    AerialVariable = { fg = c.white },
  }
end

return M
