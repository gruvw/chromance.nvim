local M = {}

--- @param c Colors The color palette
--- @param config Config
function M.get(c, config)
  return {
    FzfLuaNormal = c.groups.normal,
    FzfLuaBorder = { bg = c.editor.background, fg = c.tab.unfocusedActiveBorder },
    FzfLuaTitle = { bg = c.yellow, fg = c.black, bold = true },
    FzfLuaBackdrop = { bg = c.dark },
    FzfLuaPreviewNormal = c.groups.normal,
    FzfLuaPreviewBorder = { link = "FzfLuaBorder" },
    FzfLuaPreviewTitle = { bg = c.editor.background, fg = c.blue, bold = true },
    FzfLuaCursorLine = { bg = c.editor.highlight_background, bold = true },
    FzfLuaScrollBorderEmpty = { link = "FzfLuaBorder" },
    FzfLuaScrollBorderFull = { link = "FzfLuaBorder" },
    FzfLuaHelpNormal = c.groups.normal,
    FzfLuaHelpBorder = c.groups.border,
    FzfLuaHeaderBind = { fg = c.blue },
    FzfLuaHeaderText = { fg = c.green },
    FzfLuaFzfHeader = { fg = c.editor.text },
    FzfLuaFzfInfo = { fg = c.grey },
    FzfLuaFzfPointer = { fg = c.blue },
  }
end

return M
