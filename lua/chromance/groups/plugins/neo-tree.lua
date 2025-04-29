local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  local sidebar_bg = colors.editor.background
  return {
    NeoTreeNormal = { bg = sidebar_bg, fg = colors.editor.foreground },
    NeoTreeEndOfBuffer = {
      bg = sidebar_bg,
      fg = sidebar_bg,
    },
    NeoTreeNormalNC = { bg = sidebar_bg, fg = colors.editor.foreground },
    NeoTreeSignColumn = { bg = sidebar_bg, fg = colors.editor.foreground },
    NeoTreeStatusLine = { bg = sidebar_bg, fg = sidebar_bg },
    NeoTreeCursor = { link = "Cursor", },
    NeoTreeCursorLine = { link = "CursorLine" },
    NeoTreeWinSeparator = {
      bg = colors.editor.background,
      fg = colors.editor.border,
    },
    NeoTreeRootName = {
      fg = colors.editor.text,
      bold = true,
    },
    NeoTreeDirectoryIcon = { fg = colors.editor.foreground },
    NeoTreeDirectoryName = { fg = colors.editor.foreground },
    NeoTreeGitAdded = { fg = colors.edition.added },
    NeoTreeGitConflict = { fg = colors.edition.conflict },
    NeoTreeGitDeleted = { fg = colors.edition.deleted },
    NeoTreeGitIgnored = { fg = colors.edition.ignored },
    NeoTreeGitModified = { fg = colors.edition.changed }, -- unstaged
    NeoTreeGitStaged = { fg = colors.edition.staged },
    NeoTreeGitRenamed = { fg = colors.edition.ignored },
    NeoTreeGitUntracked = { fg = colors.edition.ignored },
    NeoTreeIndentMarker = { link = "IndentBlanklineChar" },
    NeoTreeExpander = { link = "NeoTreeDirectoryIcon" },
    NeoTreeFloatNormal = {
      bg = colors.editor.background,
      fg = colors.editor.foreground,
    },
    NeoTreeFloatBorder = {
      bg = colors.editor.background,
      fg = colors.editor.text,
    },
    NeoTreeTitleBar = {
      bg = sidebar_bg,
      fg = colors.yellow,
      bold = true,
    },
    NeoTreeFloatTitle = {
      bg = colors.yellow,
      fg = sidebar_bg,
      bold = true,
    },
    NeoTreeTabActive = {
      bg = colors.editor.background_light,
      fg = colors.editor.text,
      bold = true,
    },
    NeoTreeTabInactive = { bg = colors.editor.background, fg = colors.editor.text },
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
