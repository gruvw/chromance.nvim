local M = {}

--- @param c Colors The color palette
function M.get(c, _, _)
  return {
    AerialLine = { bg = c.editor.selectionHighlightBackground },
    AerialArray = { fg = c.magenta },
    AerialBoolean = { fg = c.magenta },
    AerialClass = { fg = c.cyan },
    AerialConstant = { fg = c.magenta },
    AerialConstructor = { fg = c.green },
    AerialEnum = { fg = c.cyan },
    AerialEnumMember = { fg = c.magenta },
    AerialEvent = { fg = c.cyan },
    AerialField = { fg = c.white },
    AerialFile = { fg = c.green },
    AerialFunction = { fg = c.green },
    AerialInterface = { fg = c.green },
    AerialKey = { fg = c.magenta },
    AerialMethod = { fg = c.green },
    AerialModule = { fg = c.cyan },
    AerialNamespace = { fg = c.white },
    AerialNull = { fg = c.red },
    AerialNumber = { fg = c.magenta },
    AerialObject = { fg = c.magenta },
    AerialOperator = { fg = c.red },
    AerialPackage = { fg = c.cyan },
    AerialProperty = { fg = c.cyan },
    AerialString = { fg = c.yellow },
    AerialStruct = { fg = c.cyan },
    AerialTypeParameter = { fg = c.red },
    AerialVariable = { fg = c.white },
  }
end

return M
