local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    NoiceCmdlinePopup = { bg = colors.editor.background },
    NoiceCmdlinePopupBorder = {
      bg = colors.editor.background,
      fg = colors.editorSuggestWidget.foreground,
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
    NoiceConfirm = { bg = colors.notifications.background, fg = colors.notifications.foreground },
    NoiceConfirmBorder = { bg = colors.notifications.background, fg = colors.notifications.border },
    NoiceFormatConfirm = { bg = colors.button.background, fg = colors.button.foreground },
    NoiceFormatConfirmDefault = { bg = colors.button.hoverBackground, fg = colors.button.foreground },
    NoiceSplit = { bg = colors.editor.background },
    NoiceMini = { fg = colors.grey },
  }
end

return M
