local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    ScrollbarHandle = {
      bg = colors.editor.background_light,
      fg = colors.white,
    },
    ScrollbarCursorHandle = {
      bg = colors.editor.background_light,
    },
    ScrollbarCursor = {
      link = "Cursor",
    },

    ScrollbarSearchHandle = {
      bg = colors.editor.background_light,
    },
    ScrollbarSearch = {
      bg = colors.editor.background,
      fg = colors.white,
    },

    ScrollbarErrorHandle = {
      bg = colors.editor.background_light,
      fg = colors.semantic.error,
    },
    ScrollbarError = {
      bg = colors.editor.background,
      fg = colors.semantic.error,
    },

    ScrollbarWarnHandle = {
      bg = colors.editor.background_light,
      fg = colors.semantic.warning,
    },
    ScrollbarWarn = {
      bg = colors.editor.background,
      fg = colors.semantic.warning,
    },

    ScrollbarInfoHandle = {
      bg = colors.editor.background_light,
      fg = colors.semantic.info,
    },
    ScrollbarInfo = {
      bg = colors.editor.background,
      fg = colors.semantic.info,
    },

    ScrollbarHintHandle = {
      bg = colors.editor.background_light,
      fg = colors.semantic.info,
    },
    ScrollbarHint = {
      bg = colors.editor.background,
      fg = colors.semantic.info,
    },

    ScrollbarGitAddHandle = {
      bg = colors.editor.background_light,
      fg = colors.edition.added,
    },
    ScrollbarGitAdd = {
      bg = colors.editor.background,
      fg = colors.edition.added,
    },
    ScrollbarGitChangeHandle = {
      bg = colors.editor.background_light,
      fg = colors.edition.changed,
    },
    ScrollbarGitChange = {
      bg = colors.editor.background,
      fg = colors.edition.changed,
    },
    ScrollbarGitDeleteHandle = {
      bg = colors.editor.background_light,
      fg = colors.edition.deleted,
    },
    ScrollbarGitDelete = {
      bg = colors.editor.background,
      fg = colors.edition.deleted,
    },
  }
end

return M
