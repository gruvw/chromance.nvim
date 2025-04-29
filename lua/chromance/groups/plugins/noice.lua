local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    NoiceCmdlinePopup = { bg = colors.editor.background },
    NoiceCmdlinePopupBorder = {
      bg = colors.editor.background,
      fg = colors.editor.foreground,
    },
    NoiceCmdlinePopupBorderSearch = {
      bg = colors.editor.background,
      fg = colors.blue,
    },
    NoiceCmdlineIconSearch = { fg = colors.blue },
    NoiceFormatProgressDone = { bg = colors.yellow, fg = colors.black, bold = true },
    NoiceFormatProgressTodo = { bg = colors.grey, fg = colors.dark },
    NoiceLspProgressTitle = { fg = colors.grey },
    NoiceLspProgressClient = { fg = colors.blue },
    NoiceConfirm = { bg = colors.editor.background, fg = colors.editor.text },
    NoiceConfirmBorder = { bg = colors.editor.background, fg = colors.editor.border },
    NoiceFormatConfirm = { bg = colors.editor.background, fg = colors.editor.text },
    NoiceFormatConfirmDefault = { bg = colors.editor.background_light, fg = colors.editor.text },
    NoiceSplit = { bg = colors.editor.background },
    NoiceMini = { fg = colors.grey },
  }
end

return M
