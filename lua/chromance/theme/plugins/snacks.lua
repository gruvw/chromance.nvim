local M = {}

--- @param c Colors The color palette
function M.get(c, _, hp)
  return {
    SnacksDashboardNormal = { bg = c.editor.background, fg = c.editor.text },
    SnacksDashboardDesc = { fg = c.dimmed1 },
    SnacksDashboardIcon = { fg = c.cyan },
  }
end

return M
