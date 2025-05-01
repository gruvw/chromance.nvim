local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    DashboardHeader = {
      fg = colors.yellow,
    },
    DashboardFooter = {
      fg = colors.green,
    },

    DashboardKey = {
      fg = colors.blue,
    },
    DashboardDesc = {
      fg = colors.white,
    },
    DashboardIcon = {
      fg = colors.blue,
    },

    DashboardProjectTitle = {
      fg = colors.yellow,
    },
    DashboardMruTitle = {
      fg = colors.yellow,
    },
    DashboardFiles = {
      fg = colors.blue,
    },
    DashboardShortcut = {
      fg = colors.red,
    },
  }
end

return M
