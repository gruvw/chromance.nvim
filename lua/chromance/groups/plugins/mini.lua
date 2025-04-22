---@class chromance.theme.plugins.mini
local M = {}

--- @param c Colors The color palette
function M.get(c, _)
  return {
    MiniIndentscopeSymbol = { fg = c.blue },

    -- mini.status
    MiniStatuslineModeNormal = { fg = c.black, bg = c.green },
    MiniStatuslineModeInsert = { fg = c.black, bg = c.yellow },
    MiniStatuslineModeCommand = { fg = c.black, bg = c.red },
    MiniStatuslineModeVisual = { fg = c.black, bg = c.blue },
    MiniStatuslineModeReplace = { fg = c.black, bg = c.blue },
    MiniStatuslineModeOther = { fg = c.black, bg = c.white },
  }
end

return M
