local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    MiniIndentscopeSymbol = {
      fg = colors.blue,
    },

    -- mini.status
    MiniStatuslineModeNormal = {
      bg = colors.green,
      fg = colors.black,
    },
    MiniStatuslineModeInsert = {
      bg = colors.yellow,
      fg = colors.black,
    },
    MiniStatuslineModeCommand = {
      bg = colors.red,
      fg = colors.black,
    },
    MiniStatuslineModeVisual = {
      bg = colors.blue,
      fg = colors.black,
    },
    MiniStatuslineModeReplace = {
      bg = colors.blue,
      fg = colors.black,
    },
    MiniStatuslineModeOther = {
      bg = colors.white,
      fg = colors.black,
    },
  }
end

return M
