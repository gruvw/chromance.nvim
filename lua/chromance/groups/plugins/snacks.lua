local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    SnacksDashboardNormal = {
      bg = colors.editor.background,
      fg = colors.editor.text,
    },
    SnacksDashboardDesc = {
      fg = colors.white,
    },
    SnacksDashboardIcon = {
      fg = colors.blue,
    },
  }
end

return M
