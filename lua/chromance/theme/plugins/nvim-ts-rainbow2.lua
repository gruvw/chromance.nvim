local M = {}

--- @param c Colors The color palette
function M.get(c, _, _)
  return {
    TSRainbowRed = { fg = c.red },
    TSRainbowYellow = { fg = c.yellow },
    TSRainbowBlue = { fg = c.blue },
    TSRainbowOrange = { fg = c.blue },
    TSRainbowGreen = { fg = c.green },
    TSRainbowViolet = { fg = c.red },
    TSRainbowCyan = { fg = c.blue },
  }
end

return M
