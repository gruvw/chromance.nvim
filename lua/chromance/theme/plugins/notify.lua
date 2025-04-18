local M = {}

--- @param c Colors The color palette
--- @param config Config
--- @param hp Helper
function M.get(c, config, hp)
  local isBackgroundClear = vim.tbl_contains(config.background_clear, "notify")
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
  if not isBackgroundClear then
    local BORDER = "Border"
    local ICON = "Icon"
    local TITLE = "Title"
    local BODY = "Body"
    for group, hlValue in pairs(notify_groups) do
      if string.match(group, BORDER) then
        notify_groups[group] = {
          bg = c.notifications.background,
          fg = c.notifications.border,
        }
      end
      if string.match(group, ICON) or string.match(group, TITLE) then
        notify_groups[group] = vim.tbl_deep_extend("force", hlValue or {}, {
          bg = c.notifications.background,
        })
      end
      if string.match(group, BODY) or group == "NotifyBackground" then
        notify_groups[group] = {
          bg = c.notifications.background,
          fg = c.notifications.foreground,
        }
      end
    end
  end
  return notify_groups
end

return M
