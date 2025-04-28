local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    AerialLine = { bg = colors.editor.background_highlight },
    AerialArray = { fg = colors.red },
    AerialBoolean = { fg = colors.purple },
    AerialClass = { fg = colors.blue },
    AerialConstant = { fg = colors.red },
    AerialConstructor = { fg = colors.green },
    AerialEnum = { fg = colors.blue },
    AerialEnumMember = { fg = colors.red },
    AerialEvent = { fg = colors.blue },
    AerialField = { fg = colors.white },
    AerialFile = { fg = colors.green },
    AerialFunction = { fg = colors.green },
    AerialInterface = { fg = colors.green },
    AerialKey = { fg = colors.red },
    AerialMethod = { fg = colors.green },
    AerialModule = { fg = colors.blue },
    AerialNamespace = { fg = colors.white },
    AerialNull = { fg = colors.red },
    AerialNumber = { fg = colors.red },
    AerialObject = { fg = colors.red },
    AerialOperator = { fg = colors.red },
    AerialPackage = { fg = colors.blue },
    AerialProperty = { fg = colors.blue },
    AerialString = { fg = colors.yellow },
    AerialStruct = { fg = colors.blue },
    AerialTypeParameter = { fg = colors.red },
    AerialVariable = { fg = colors.white },
  }
end

return M
