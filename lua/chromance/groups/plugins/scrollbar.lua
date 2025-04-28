local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    ScrollbarHandle = {
      bg = colors.scrollbarSlider.hoverBackground,
      fg = colors.white,
    },
    ScrollbarCursorHandle = { bg = colors.scrollbarSlider.hoverBackground },
    ScrollbarCursor = {
      bg = colors.list.activeSelectionBackground,
      fg = colors.list.activeSelectionBackground,
    },

    ScrollbarSearchHandle = { bg = colors.scrollbarSlider.hoverBackground },
    ScrollbarSearch = { bg = colors.editor.background, fg = colors.white },

    ScrollbarErrorHandle = {
      bg = colors.scrollbarSlider.hoverBackground,
      fg = colors.inputValidation.errorForeground,
    },
    ScrollbarError = {
      bg = colors.editor.background,
      fg = colors.inputValidation.errorForeground,
    },

    ScrollbarWarnHandle = {
      bg = colors.scrollbarSlider.hoverBackground,
      fg = colors.inputValidation.warningForeground,
    },
    ScrollbarWarn = {
      bg = colors.editor.background,
      fg = colors.inputValidation.warningForeground,
    },

    ScrollbarInfoHandle = {
      bg = colors.scrollbarSlider.hoverBackground,
      fg = colors.inputValidation.infoForeground,
    },
    ScrollbarInfo = {
      bg = colors.editor.background,
      fg = colors.inputValidation.infoForeground,
    },

    ScrollbarHintHandle = {
      bg = colors.scrollbarSlider.hoverBackground,
      fg = colors.inputValidation.infoForeground,
    },
    ScrollbarHint = {
      bg = colors.editor.background,
      fg = colors.inputValidation.infoForeground,
    },

    ScrollbarGitAddHandle = {
      bg = colors.scrollbarSlider.hoverBackground,
      fg = colors.gitDecoration.addedResourceForeground,
    },
    ScrollbarGitAdd = {
      bg = colors.editor.background,
      fg = colors.gitDecoration.addedResourceForeground,
    },
    ScrollbarGitChangeHandle = {
      bg = colors.scrollbarSlider.hoverBackground,
      fg = colors.gitDecoration.modifiedResourceForeground,
    },
    ScrollbarGitChange = {
      bg = colors.editor.background,
      fg = colors.gitDecoration.modifiedResourceForeground,
    },
    ScrollbarGitDeleteHandle = {
      bg = colors.scrollbarSlider.hoverBackground,
      fg = colors.gitDecoration.deletedResourceForeground,
    },
    ScrollbarGitDelete = {
      bg = colors.editor.background,
      fg = colors.gitDecoration.deletedResourceForeground,
    },
  }
end

return M
