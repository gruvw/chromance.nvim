local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    WildMenu = {
      bg = colors.yellow,
      fg = colors.black,
      bold = true,
      underline = false,
    },
  }
end

return M
