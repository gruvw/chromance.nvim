local M = {}

--- @param c Colors The color palette
function M.get(c, _, _)
  return {
    RainbowDelimiterRed = { fg = c.red },
    RainbowDelimiterYellow = { fg = c.yellow },
    RainbowDelimiterBlue = { fg = c.cyan },
    RainbowDelimiterOrange = { fg = c.blue },
    RainbowDelimiterGreen = { fg = c.green },
    RainbowDelimiterViolet = { fg = c.magenta },
    RainbowDelimiterCyan = { fg = c.cyan },
  }
end

return M
