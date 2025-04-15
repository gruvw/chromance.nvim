local M = {}

--- @param c Colors The color palette
function M.get(c, _, _)
  return {
    -- General
    DashboardHeader = { fg = c.yellow },
    DashboardFooter = { fg = c.green },
    -- Doome theme
    DashboardKey = { fg = c.cyan },
    DashboardDesc = { fg = c.dimmed1 },
    DashboardIcon = { fg = c.cyan },
    -- Hyper theme
    DashboardProjectTitle = { fg = c.yellow },
    DashboardMruTitle = { fg = c.yellow },
    DashboardFiles = { fg = c.cyan },
    DashboardShortcut = { fg = c.red },
  }
end

return M
