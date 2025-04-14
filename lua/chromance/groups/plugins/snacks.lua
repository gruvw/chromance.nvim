local M = {}

--- @param c Colors The color palette
function M.get(c, _, hp)
  return {
    SnacksDashboardNormal = { bg = c.editor.background, fg = c.editor.foreground },
    SnacksDashboardDesc = { fg = c.dimmed1 },
    SnacksDashboardIcon = { fg = c.blue },
  }
end

return M
