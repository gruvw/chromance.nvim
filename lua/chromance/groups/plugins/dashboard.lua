local M = {}

--- @param c Colors The color palette
function M.get(c, _, _)
  return {
    -- General
    DashboardHeader = { fg = c.yellow },
    DashboardFooter = { fg = c.green },
    -- Doome theme
    DashboardKey = { fg = c.blue },
    DashboardDesc = { fg = c.white },
    DashboardIcon = { fg = c.blue },
    -- Hyper theme
    DashboardProjectTitle = { fg = c.yellow },
    DashboardMruTitle = { fg = c.yellow },
    DashboardFiles = { fg = c.blue },
    DashboardShortcut = { fg = c.red },
  }
end

return M
