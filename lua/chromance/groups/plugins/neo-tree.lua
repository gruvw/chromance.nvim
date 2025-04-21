local M = {}

--- @param c Colors The color palette
--- @param config Config
function M.get(c, config, _)
  local sidebar_bg = c.editor.background
  return {
    NeoTreeNormal = { bg = sidebar_bg, fg = c.sideBar.foreground },
    NeoTreeEndOfBuffer = {
      bg = sidebar_bg,
      fg = sidebar_bg,
    },
    NeoTreeNormalNC = { bg = sidebar_bg, fg = c.sideBar.foreground },
    NeoTreeSignColumn = { bg = sidebar_bg, fg = c.sideBar.foreground },
    NeoTreeStatusLine = { bg = sidebar_bg, fg = sidebar_bg },
    NeoTreeCursor = {
      bg = c.list.activeSelectionBackground,
      -- bg_base = sidebar_bg,
    },
    NeoTreeCursorLine = {
      bg = c.list.activeSelectionBackground,
      -- bg_base = sidebar_bg,
      bold = true,
    },
    NeoTreeCursorLineSign = {
      bg = c.list.activeSelectionBackground,
      -- bg_base = sidebar_bg,
    },
    NeoTreeWinSeparator = {
      bg = c.editor.background,
      fg = c.editor.border,
    },
    NeoTreeRootName = {
      -- bg = C.sideBarSectionHeader.background,
      fg = c.sideBarSectionHeader.foreground,
      bold = true,
    },
    NeoTreeDirectoryIcon = { fg = c.sideBar.foreground },
    NeoTreeDirectoryName = { fg = c.sideBar.foreground },
    NeoTreeGitAdded = { fg = c.gitDecoration.addedResourceForeground },
    NeoTreeGitConflict = { fg = c.gitDecoration.conflictingResourceForeground },
    NeoTreeGitDeleted = { fg = c.gitDecoration.deletedResourceForeground },
    NeoTreeGitIgnored = { fg = c.gitDecoration.ignoredResourceForeground },
    NeoTreeGitModified = { fg = c.gitDecoration.modifiedResourceForeground }, -- unstaged
    NeoTreeGitStaged = { fg = c.gitDecoration.stageModifiedResourceForeground },
    NeoTreeGitRenamed = { fg = c.gitDecoration.untrackedResourceForeground },
    NeoTreeGitUntracked = { fg = c.gitDecoration.untrackedResourceForeground },
    NeoTreeIndentMarker = { link = "IndentBlanklineChar" },
    NeoTreeExpander = { link = "NeoTreeDirectoryIcon" },
    NeoTreeFloatNormal = {
      bg = c.editorSuggestWidget.background,
      fg = c.editorSuggestWidget.foreground,
    },
    NeoTreeFloatBorder = {
      bg = c.editor.background,
      fg = c.editor.text,
    },
    NeoTreeTitleBar = {
      bg = sidebar_bg,
      fg = c.yellow,
      bold = true,
    },
    NeoTreeFloatTitle = {
      bg = c.yellow,
      fg = sidebar_bg,
      bold = true,
    },
    NeoTreeTabActive = {
      bg = c.button.hoverBackground,
      fg = c.button.foreground,
      bold = true,
    },
    NeoTreeTabInactive = { bg = c.button.background, fg = c.button.foreground },
    NeoTreeTabSeparatorActive = {
      bg = c.button.hoverBackground,
      fg = c.button.separator,
    },
    NeoTreeTabSeparatorInactive = {
      bg = c.button.background,
      fg = c.button.separator,
    },
  }
end

return M
