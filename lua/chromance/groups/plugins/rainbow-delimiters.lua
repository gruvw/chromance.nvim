local M = {}

--- @param c Colors The color palette
function M.get(c, _)
  return {
    RainbowDelimiterRed = { fg = c.red },
    RainbowDelimiterYellow = { fg = c.yellow },
    RainbowDelimiterBlue = { fg = c.blue },
    RainbowDelimiterOrange = { fg = c.blue },
    RainbowDelimiterGreen = { fg = c.green },
    RainbowDelimiterViolet = { fg = c.red },
    RainbowDelimiterCyan = { fg = c.blue },
  }
end

return M
