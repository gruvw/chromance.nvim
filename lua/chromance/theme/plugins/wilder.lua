local M = {}

--- @param c Colors The color palette
function M.get(c, _, _)
  return {
    WildMenu = {
      bg = c.yellow,
      fg = c.black,
      bold = true,
      underline = false,
    },
  }
end

return M
