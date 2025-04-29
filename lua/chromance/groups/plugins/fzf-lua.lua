local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    FzfLuaNormal = colors.groups.normal,
    FzfLuaBorder = { bg = colors.editor.background, fg = colors.tab.unfocusedActiveBorder },
    FzfLuaTitle = { bg = colors.yellow, fg = colors.black, bold = true },
    FzfLuaBackdrop = { bg = colors.dark },
    FzfLuaPreviewNormal = colors.groups.normal,
    FzfLuaPreviewBorder = { link = "FzfLuaBorder" },
    FzfLuaPreviewTitle = { bg = colors.editor.background, fg = colors.blue, bold = true },
    FzfLuaCursorLine = { bg = colors.editor.background_light, bold = true },
    FzfLuaScrollBorderEmpty = { link = "FzfLuaBorder" },
    FzfLuaScrollBorderFull = { link = "FzfLuaBorder" },
    FzfLuaHelpNormal = colors.groups.normal,
    FzfLuaHelpBorder = colors.groups.border,
    FzfLuaHeaderBind = { fg = colors.blue },
    FzfLuaHeaderText = { fg = colors.green },
    FzfLuaFzfHeader = { fg = colors.editor.text },
    FzfLuaFzfInfo = { fg = colors.grey },
    FzfLuaFzfPointer = { fg = colors.blue },
  }
end

return M
