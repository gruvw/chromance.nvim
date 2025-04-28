local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    MiniIndentscopeSymbol = { fg = colors.blue },

    -- mini.status
    MiniStatuslineModeNormal = { fg = colors.black, bg = colors.green },
    MiniStatuslineModeInsert = { fg = colors.black, bg = colors.yellow },
    MiniStatuslineModeCommand = { fg = colors.black, bg = colors.red },
    MiniStatuslineModeVisual = { fg = colors.black, bg = colors.blue },
    MiniStatuslineModeReplace = { fg = colors.black, bg = colors.blue },
    MiniStatuslineModeOther = { fg = colors.black, bg = colors.white },
  }
end

return M
