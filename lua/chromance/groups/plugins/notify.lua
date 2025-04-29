local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  local notify_groups = {
    NotifyERRORBorder = { fg = colors.semantic.error },
    NotifyWARNBorder = { fg = colors.semantic.warning, },
    NotifyINFOBorder = { fg = colors.semantic.info, },
    NotifyDEBUGBorder = { fg = colors.grey, },
    NotifyTRACEBorder = { fg = colors.red, },
    NotifyERRORIcon = { fg = colors.semantic.errorForeground },
    NotifyWARNIcon = { fg = colors.semantic.warning },
    NotifyINFOIcon = { fg = colors.semantic.info },
    NotifyDEBUGIcon = { fg = colors.white },
    NotifyTRACEIcon = { fg = colors.red },
    NotifyERRORTitle = { link = "NotifyERRORIcon" },
    NotifyWARNTitle = { link = "NotifyWARNIcon" },
    NotifyINFOTitle = { link = "NotifyINFOIcon" },
    NotifyDEBUGTitle = { fg = colors.grey },
    NotifyTRACETitle = { fg = colors.red },
    NotifyERRORBody = { link = "Normal" },
    NotifyWARNBody = { link = "Normal" },
    NotifyINFOBody = { link = "Normal" },
    NotifyDEBUGBody = { link = "Normal" },
    NotifyTRACEBody = { link = "Normal" },
    NotifyBackground = { link = "Normal" },
  }

  return notify_groups
end

return M
