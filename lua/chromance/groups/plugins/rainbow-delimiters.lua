local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    RainbowDelimiterRed = {
      fg = colors.rainbow.rainbow1,
    },
    RainbowDelimiterYellow = {
      fg = colors.rainbow.rainbow2,
    },
    RainbowDelimiterBlue = {
      fg = colors.rainbow.rainbow3,
    },
    RainbowDelimiterOrange = {
      fg = colors.rainbow.rainbow4,
    },
    RainbowDelimiterGreen = {
      fg = colors.rainbow.rainbow5,
    },
    RainbowDelimiterViolet = {
      fg = colors.rainbow.rainbow6,
    },
    RainbowDelimiterCyan = {
      fg = colors.rainbow.rainbow3,
    },
  }
end

return M
