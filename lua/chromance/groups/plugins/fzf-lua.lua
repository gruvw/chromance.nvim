local M = {}

--- @param c Colors The color palette
--- @param config Config
--- @param hp Helper
function M.get(c, config, hp)
  local transparent_bg = c.editor.background

  local common_fg = hp.lighten(c.sideBar.foreground, 30)

  return {
    FzfLuaNormal = { bg = transparent_bg, fg = common_fg },
    FzfLuaBorder = { bg = transparent_bg, fg = c.tab.unfocusedActiveBorder },
    FzfLuaTitle = { bg = c.yellow, fg = c.black, bold = true },
    FzfLuaBackdrop = { bg = c.dark },
    FzfLuaPreviewNormal = { bg = transparent_bg },
    FzfLuaPreviewBorder = { link = "FzfLuaBorder" },
    FzfLuaPreviewTitle = { bg = hp.lighten(transparent_bg, 3), fg = c.blue, bold = true },
    FzfLuaCursorLine = { bg = hp.blend(c.editorSuggestWidget.selectedBackground, 0.3, transparent_bg), bold = true },
    FzfLuaScrollBorderEmpty = { link = "FzfLuaBorder" },
    FzfLuaScrollBorderFull = { link = "FzfLuaBorder" },
    FzfLuaHelpNormal = { bg = transparent_bg, fg = common_fg },
    FzfLuaHelpBorder = { bg = transparent_bg, fg = c.green },
    FzfLuaHeaderBind = { fg = c.cyan },
    FzfLuaHeaderText = { fg = c.green },
    FzfLuaFzfHeader = { fg = common_fg },
    FzfLuaFzfInfo = { fg = c.dimmed3 },
    FzfLuaFzfPointer = { fg = c.blue },
  }
end

return M
