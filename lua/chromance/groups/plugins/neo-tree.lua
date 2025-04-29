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
    NeoTreeGitAdded = { fg = colors.gitDecoration.addedResourceForeground },
    NeoTreeGitConflict = { fg = colors.gitDecoration.conflictingResourceForeground },
    NeoTreeGitDeleted = { fg = colors.gitDecoration.deletedResourceForeground },
    NeoTreeGitIgnored = { fg = colors.gitDecoration.ignoredResourceForeground },
    NeoTreeGitModified = { fg = colors.gitDecoration.modifiedResourceForeground }, -- unstaged
    NeoTreeGitStaged = { fg = colors.gitDecoration.stageModifiedResourceForeground },
    NeoTreeGitRenamed = { fg = colors.gitDecoration.untrackedResourceForeground },
    NeoTreeGitUntracked = { fg = colors.gitDecoration.untrackedResourceForeground },
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
