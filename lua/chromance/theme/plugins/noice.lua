local M = {}

--- @param c Colors The color palette
function M.get(c, _, _)
  return {
    NoiceCmdlinePopup = { bg = c.editor.background },
    NoiceCmdlinePopupBorder = {
      bg = c.editor.background,
      fg = c.editorSuggestWidget.foreground,
    },
    NoiceCmdlinePopupBorderSearch = {
      bg = c.editor.background,
      fg = c.blue,
    },
    NoiceCmdlineIconSearch = { fg = c.blue },
    NoiceFormatProgressDone = { bg = c.yellow, fg = c.black, bold = true },
    NoiceFormatProgressTodo = { bg = c.grey, fg = c.dark },
    NoiceLspProgressTitle = { fg = c.grey },
    NoiceLspProgressClient = { fg = c.blue },
    NoiceConfirm = { bg = c.notifications.background, fg = c.notifications.foreground },
    NoiceConfirmBorder = { bg = c.notifications.background, fg = c.notifications.border },
    NoiceFormatConfirm = { bg = c.button.background, fg = c.button.foreground },
    NoiceFormatConfirmDefault = { bg = c.button.hoverBackground, fg = c.button.foreground },
    NoiceSplit = { bg = c.editor.background },
    NoiceMini = { fg = c.grey },
  }
end

return M
