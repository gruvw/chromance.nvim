local M = {}

--- @param c Colors The color palette
--- @param config Config
function M.get(c, config)
  return {
    NvimTreeFolderIcon = { fg = c.grey },

    NvimTreeIndentMarker = { link = "IndentBlanklineChar" },

    NvimTreeNormal = c.groups.normal,
    NvimTreeNormalFloat = { fg = c.editor.text },
    NvimTreeEndOfBuffer = c.groups.normal,
    NvimTreeWinSeparator = c.groups.border,

    NvimTreeFolderName = { fg = c.editor.text },
    NvimTreeOpenedFolderName = { fg = c.editor.text, italic = c.italic_enabled },
    NvimTreeEmptyFolderName = { fg = c.grey, },
    NvimTreeImageFile = { fg = c.white },
    NvimTreeSpecialFile = { fg = c.white },
    NvimTreeCursorLine = {
      bg = c.editor.highlight_background,
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

    NvimTreeSymlink = { fg = c.yellow },
    NvimTreeRootFolder = {
      fg = c.editor.text,
      bold = true,
    },
    NvimTreeExecFile = { fg = c.green },
  }
end

return M
