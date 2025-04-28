local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  local notify_groups = {
    NotifyERRORBorder = { fg = colors.inputValidation.errorBorder },
    NotifyWARNBorder = { fg = colors.inputValidation.warningBorder, },
    NotifyINFOBorder = { fg = colors.inputValidation.infoBorder, },
    NotifyDEBUGBorder = { fg = colors.grey, },
    NotifyTRACEBorder = { fg = colors.red, },
    NotifyERRORIcon = { fg = colors.inputValidation.errorForeground },
    NotifyWARNIcon = { fg = colors.inputValidation.warningForeground },
    NotifyINFOIcon = { fg = colors.inputValidation.infoForeground },
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
