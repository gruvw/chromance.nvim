---@class chromance.theme.plugins.mini
local M = {}

--- @param c Colors The color palette
function M.get(c, _, _)
  return {
    MiniIndentscopeSymbol = { fg = c.cyan },

    -- mini.status
    MiniStatuslineModeNormal = { fg = c.black, bg = c.green },
    MiniStatuslineModeInsert = { fg = c.black, bg = c.yellow },
    MiniStatuslineModeCommand = { fg = c.black, bg = c.red },
    MiniStatuslineModeVisual = { fg = c.black, bg = c.cyan },
    MiniStatuslineModeReplace = { fg = c.black, bg = c.cyan },
    MiniStatuslineModeOther = { fg = c.black, bg = c.white },
  }
end

return M
