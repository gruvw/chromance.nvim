local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    FidgetTask = {
      bg = colors.editor.background,
      fg = colors.white,
    },
    FidgetTitle = {
      bg = colors.editor.background,
      fg = colors.yellow,
    },
  }
end

return M
