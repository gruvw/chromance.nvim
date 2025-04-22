local M = {}

--- @param c Colors The color palette
function M.get(c, _)
  return {
    SnacksDashboardNormal = { bg = c.editor.background, fg = c.editor.text },
    SnacksDashboardDesc = { fg = c.white },
    SnacksDashboardIcon = { fg = c.blue },
  }
end

return M
