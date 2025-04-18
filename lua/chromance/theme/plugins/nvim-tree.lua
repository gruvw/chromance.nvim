local M = {}

--- @param c Colors The color palette
--- @param config Config
function M.get(c, config, _)
  local isBackgroundClear = vim.tbl_contains(config.background_clear, "nvim-tree")
  local sidebar_bg = isBackgroundClear and c.editor.background or c.sideBar.background
  return {
    NvimTreeFolderIcon = { fg = c.silver },

    NvimTreeIndentMarker = { link = "IndentBlanklineChar" },

    NvimTreeNormal = c.styles.normal,
    NvimTreeNormalFloat = { fg = c.editor.text },
    NvimTreeEndOfBuffer = {
      bg = sidebar_bg,
      fg = sidebar_bg,
    },
    NvimTreeWinSeparator = c.styles.border,

    NvimTreeFolderName = { fg = c.editor.text },
    NvimTreeOpenedFolderName = { fg = c.editor.text, italic = true },
    NvimTreeEmptyFolderName = { fg = c.sideBar.foreground, italic = true },
    NvimTreeImageFile = { fg = c.white },
    NvimTreeSpecialFile = { fg = c.white },
    NvimTreeCursorLine = {
      bg = c.editor.lineHighlightBackground,
      -- bg_base = sidebar_bg,
    },

    NvimTreeGitIgnored = { fg = c.gitDecoration.ignoredResourceForeground },
    NvimTreeGitignoreIcon = { fg = c.gitDecoration.ignoredResourceForeground },
    NvimTreeGitStaged = { fg = c.gitDecoration.stageModifiedResourceForeground },
    NvimTreeGitDirty = { fg = c.gitDecoration.modifiedResourceForeground }, -- unstaged/modified
    NvimTreeGitNew = { fg = c.gitDecoration.untrackedResourceForeground },
    NvimTreeGitRenamed = { fg = c.gitDecoration.untrackedResourceForeground },
    NvimTreeGitDeleted = { fg = c.gitDecoration.deletedResourceForeground },
    NvimTreeGitMerge = { fg = c.gitDecoration.conflictingResourceForeground },

    NvimTreeSymlink = { fg = c.white },
    NvimTreeRootFolder = {
      fg = c.sideBarSectionHeader.foreground,
      bold = true,
    },
    NvimTreeExecFile = { fg = c.green },
  }
end

return M
