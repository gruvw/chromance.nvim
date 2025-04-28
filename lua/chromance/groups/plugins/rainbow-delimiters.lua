local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    RainbowDelimiterRed = { fg = colors.red },
    RainbowDelimiterYellow = { fg = colors.yellow },
    RainbowDelimiterBlue = { fg = colors.blue },
    RainbowDelimiterOrange = { fg = colors.blue },
    RainbowDelimiterGreen = { fg = colors.green },
    RainbowDelimiterViolet = { fg = colors.red },
    RainbowDelimiterCyan = { fg = colors.blue },
  }
end

return M
