local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    ScrollbarHandle = {
      bg = colors.editor.background_light,
      fg = colors.white,
    },
    ScrollbarCursorHandle = { bg = colors.editor.background_light },
    ScrollbarCursor = { link = "Cursor"},

    ScrollbarSearchHandle = { bg = colors.editor.background_light },
    ScrollbarSearch = { bg = colors.editor.background, fg = colors.white },

    ScrollbarErrorHandle = {
      bg = colors.editor.background_light,
      fg = colors.inputValidation.errorForeground,
    },
    ScrollbarError = {
      bg = colors.editor.background,
      fg = colors.inputValidation.errorForeground,
    },

    ScrollbarWarnHandle = {
      bg = colors.editor.background_light,
      fg = colors.inputValidation.warningForeground,
    },
    ScrollbarWarn = {
      bg = colors.editor.background,
      fg = colors.inputValidation.warningForeground,
    },

    ScrollbarInfoHandle = {
      bg = colors.editor.background_light,
      fg = colors.inputValidation.infoForeground,
    },
    ScrollbarInfo = {
      bg = colors.editor.background,
      fg = colors.inputValidation.infoForeground,
    },

    ScrollbarHintHandle = {
      bg = colors.editor.background_light,
      fg = colors.inputValidation.infoForeground,
    },
    ScrollbarHint = {
      bg = colors.editor.background,
      fg = colors.inputValidation.infoForeground,
    },

    ScrollbarGitAddHandle = {
      bg = colors.editor.background_light,
      fg = colors.gitDecoration.addedResourceForeground,
    },
    ScrollbarGitAdd = {
      bg = colors.editor.background,
      fg = colors.gitDecoration.addedResourceForeground,
    },
    ScrollbarGitChangeHandle = {
      bg = colors.editor.background_light,
      fg = colors.gitDecoration.modifiedResourceForeground,
    },
    ScrollbarGitChange = {
      bg = colors.editor.background,
      fg = colors.gitDecoration.modifiedResourceForeground,
    },
    ScrollbarGitDeleteHandle = {
      bg = colors.editor.background_light,
      fg = colors.gitDecoration.deletedResourceForeground,
    },
    ScrollbarGitDelete = {
      bg = colors.editor.background,
      fg = colors.gitDecoration.deletedResourceForeground,
    },
  }
end

return M
