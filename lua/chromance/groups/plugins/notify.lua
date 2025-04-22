local M = {}

--- @param c Colors The color palette
function M.get(c, _)
  local notify_groups = {
    NotifyERRORBorder = { fg = c.inputValidation.errorBorder },
    NotifyWARNBorder = { fg = c.inputValidation.warningBorder, },
    NotifyINFOBorder = { fg = c.inputValidation.infoBorder, },
    NotifyDEBUGBorder = { fg = c.grey, },
    NotifyTRACEBorder = { fg = c.red, },
    NotifyERRORIcon = { fg = c.inputValidation.errorForeground },
    NotifyWARNIcon = { fg = c.inputValidation.warningForeground },
    NotifyINFOIcon = { fg = c.inputValidation.infoForeground },
    NotifyDEBUGIcon = { fg = c.white },
    NotifyTRACEIcon = { fg = c.red },
    NotifyERRORTitle = { link = "NotifyERRORIcon" },
    NotifyWARNTitle = { link = "NotifyWARNIcon" },
    NotifyINFOTitle = { link = "NotifyINFOIcon" },
    NotifyDEBUGTitle = { fg = c.grey },
    NotifyTRACETitle = { fg = c.red },
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
