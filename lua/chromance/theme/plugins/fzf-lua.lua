local M = {}

--- @param c Colors The color palette
--- @param config Config
--- @param hp Helper
function M.get(c, config, hp)
  local transparent_bg = c.editor.background

  local common_fg = hp.blend(c.sideBar.foreground, 0.3, c.text)

  return {
    FzfLuaNormal = { bg = transparent_bg, fg = common_fg },
    FzfLuaBorder = { bg = transparent_bg, fg = c.tab.unfocusedActiveBorder },
    FzfLuaTitle = { bg = c.yellow, fg = c.black, bold = true },
    FzfLuaBackdrop = { bg = c.dark },
    FzfLuaPreviewNormal = { bg = transparent_bg },
    FzfLuaPreviewBorder = { link = "FzfLuaBorder" },
    FzfLuaPreviewTitle = { bg = transparent_bg, fg = c.cyan, bold = true },
    FzfLuaCursorLine = { bg = hp.blend(c.editorSuggestWidget.selectedBackground, 0.3, transparent_bg), bold = true },
    FzfLuaScrollBorderEmpty = { link = "FzfLuaBorder" },
    FzfLuaScrollBorderFull = { link = "FzfLuaBorder" },
    FzfLuaHelpNormal = { bg = transparent_bg, fg = common_fg },
    FzfLuaHelpBorder = { bg = transparent_bg, fg = c.green },
    FzfLuaHeaderBind = { fg = c.cyan },
    FzfLuaHeaderText = { fg = c.green },
    FzfLuaFzfHeader = { fg = common_fg },
    FzfLuaFzfInfo = { fg = c.grey },
    FzfLuaFzfPointer = { fg = c.cyan },
  }
end

return M
