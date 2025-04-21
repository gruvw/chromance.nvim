local M = {}

--- @param c Colors The color palette
--- @param config Config
--- @param hp Helper
function M.get(c, config, hp)
  local notify_groups = {
    NotifyERRORBorder = { fg = hp.blend(c.inputValidation.errorBorder, 0.3, c.dark) },
    NotifyWARNBorder = { fg = hp.blend(c.inputValidation.warningBorder, 0.3, c.dark) },
    NotifyINFOBorder = { fg = hp.blend(c.inputValidation.infoBorder, 0.3, c.dark) },
    NotifyDEBUGBorder = { fg = hp.blend(c.grey, 0.3, c.dark) },
    NotifyTRACEBorder = { fg = hp.blend(c.red, 0.3, c.dark) },
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
