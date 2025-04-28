local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    TSRainbowRed = { fg = colors.red },
    TSRainbowYellow = { fg = colors.yellow },
    TSRainbowBlue = { fg = colors.blue },
    TSRainbowOrange = { fg = colors.blue },
    TSRainbowGreen = { fg = colors.green },
    TSRainbowViolet = { fg = colors.red },
    TSRainbowCyan = { fg = colors.blue },
  }
end

return M
