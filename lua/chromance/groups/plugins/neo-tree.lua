local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  local background = colors.editor.background

  return {
    NeoTreeNormal = {
      bg = background,
      fg = colors.editor.foreground,
    },
    NeoTreeEndOfBuffer = {
      bg = background,
      fg = background,
    },
    NeoTreeNormalNC = {
      bg = background,
      fg = colors.editor.foreground,
    },
    NeoTreeSignColumn = {
      bg = background,
      fg = colors.editor.foreground,
    },
    NeoTreeStatusLine = {
      bg = background,
      fg = background,
    },
    NeoTreeCursor = {
      link = "Cursor",
    },
    NeoTreeCursorLine = {
      link = "CursorLine",
    },
    NeoTreeWinSeparator = {
      bg = colors.editor.background,
      fg = colors.editor.border,
    },
    NeoTreeRootName = {
      fg = colors.editor.text,
      bold = true,
    },
    NeoTreeDirectoryIcon = {
      fg = colors.editor.foreground,
    },
    NeoTreeDirectoryName = {
      fg = colors.editor.foreground,
    },
    NeoTreeGitAdded = {
      fg = colors.edition.added,
    },
    NeoTreeGitConflict = {
      fg = colors.edition.conflict,
    },
    NeoTreeGitDeleted = {
      fg = colors.edition.deleted,
    },
    NeoTreeGitIgnored = {
      fg = colors.edition.ignored,
    },
    NeoTreeGitModified = {
      fg = colors.edition.changed,
    }, -- unstaged
    NeoTreeGitStaged = {
      fg = colors.edition.staged,
    },
    NeoTreeGitRenamed = {
      fg = colors.edition.ignored,
    },
    NeoTreeGitUntracked = {
      fg = colors.edition.ignored,
    },
    NeoTreeIndentMarker = {
      link = "IndentBlanklineChar",
    },
    NeoTreeExpander = {
      link = "NeoTreeDirectoryIcon",
    },
    NeoTreeFloatNormal = {
      bg = colors.editor.background,
      fg = colors.editor.foreground,
    },
    NeoTreeFloatBorder = {
      bg = colors.editor.background,
      fg = colors.editor.text,
    },
    NeoTreeTitleBar = {
      bg = background,
      fg = colors.yellow,
      bold = true,
    },
    NeoTreeFloatTitle = {
      bg = colors.yellow,
      fg = background,
      bold = true,
    },
    NeoTreeTabActive = {
      bg = colors.editor.background_light,
      fg = colors.editor.text,
      bold = true,
    },
    NeoTreeTabInactive = {
      bg = colors.editor.background,
      fg = colors.editor.text,
    },
    NeoTreeTabSeparatorActive = {
      bg = colors.editor.background_light,
      fg = colors.editor.text_dark,
    },
    NeoTreeTabSeparatorInactive = {
      bg = colors.editor.background,
      fg = colors.editor.text_dark,
    },
  }
end

return M
