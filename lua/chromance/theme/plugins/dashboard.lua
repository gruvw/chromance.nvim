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
    DashboardIcon = { fg = c.blue },
    -- Hyper theme
    DashboardProjectTitle = { fg = c.yellow },
    DashboardMruTitle = { fg = c.yellow },
    DashboardFiles = { fg = c.blue },
    DashboardShortcut = { fg = c.magenta },
  }
end

return M
