local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  local sidebar_bg = colors.editor.background
  return {
    NeoTreeNormal = { bg = sidebar_bg, fg = colors.sideBar.foreground },
    NeoTreeEndOfBuffer = {
      bg = sidebar_bg,
      fg = sidebar_bg,
    },
    NeoTreeNormalNC = { bg = sidebar_bg, fg = colors.sideBar.foreground },
    NeoTreeSignColumn = { bg = sidebar_bg, fg = colors.sideBar.foreground },
    NeoTreeStatusLine = { bg = sidebar_bg, fg = sidebar_bg },
    NeoTreeCursor = {
      bg = colors.list.activeSelectionBackground,
      -- bg_base = sidebar_bg,
    },
    NeoTreeCursorLine = {
      bg = colors.list.activeSelectionBackground,
      -- bg_base = sidebar_bg,
      bold = true,
    },
    NeoTreeCursorLineSign = {
      bg = colors.list.activeSelectionBackground,
      -- bg_base = sidebar_bg,
    },
    NeoTreeWinSeparator = {
      bg = colors.editor.background,
      fg = colors.editor.border,
    },
    NeoTreeRootName = {
      -- bg = C.sideBarSectionHeader.background,
      fg = colors.sideBarSectionHeader.foreground,
      bold = true,
    },
    NeoTreeDirectoryIcon = { fg = colors.sideBar.foreground },
    NeoTreeDirectoryName = { fg = colors.sideBar.foreground },
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
      bg = colors.editorSuggestWidget.background,
      fg = colors.editorSuggestWidget.foreground,
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
      bg = colors.button.hoverBackground,
      fg = colors.button.foreground,
      bold = true,
    },
    NeoTreeTabInactive = { bg = colors.button.background, fg = colors.button.foreground },
    NeoTreeTabSeparatorActive = {
      bg = colors.button.hoverBackground,
      fg = colors.button.separator,
    },
    NeoTreeTabSeparatorInactive = {
      bg = colors.button.background,
      fg = colors.button.separator,
    },
  }
end

return M
