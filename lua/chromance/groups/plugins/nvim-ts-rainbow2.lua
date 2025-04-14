local M = {}

--- @param c Colors The color palette
function M.get(c, _, _)
  return {
    TSRainbowRed = { fg = c.red },
    TSRainbowYellow = { fg = c.yellow },
    TSRainbowBlue = { fg = c.cyan },
    TSRainbowOrange = { fg = c.blue },
    TSRainbowGreen = { fg = c.green },
    TSRainbowViolet = { fg = c.magenta },
    TSRainbowCyan = { fg = c.cyan },
  }
end

return M
