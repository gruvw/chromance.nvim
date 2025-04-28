local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    NvimTreeFolderIcon = { fg = colors.grey },

    NvimTreeIndentMarker = { link = "IndentBlanklineChar" },

    NvimTreeNormal = colors.groups.normal,
    NvimTreeNormalFloat = { fg = colors.editor.text },
    NvimTreeEndOfBuffer = colors.groups.normal,
    NvimTreeWinSeparator = colors.groups.border,

    NvimTreeFolderName = { fg = colors.editor.text },
    NvimTreeOpenedFolderName = { fg = colors.editor.text, italic = options.italic_enabled },
    NvimTreeEmptyFolderName = { fg = colors.grey, },
    NvimTreeImageFile = { fg = colors.white },
    NvimTreeSpecialFile = { fg = colors.white },
    NvimTreeCursorLine = {
      bg = colors.editor.background_highlight,
      -- bg_base = sidebar_bg,
    },

    NvimTreeGitIgnored = { fg = colors.gitDecoration.ignoredResourceForeground },
    NvimTreeGitignoreIcon = { fg = colors.gitDecoration.ignoredResourceForeground },
    NvimTreeGitStaged = { fg = colors.gitDecoration.stageModifiedResourceForeground },
    NvimTreeGitDirty = { fg = colors.gitDecoration.modifiedResourceForeground }, -- unstaged/modified
    NvimTreeGitNew = { fg = colors.gitDecoration.untrackedResourceForeground },
    NvimTreeGitRenamed = { fg = colors.gitDecoration.untrackedResourceForeground },
    NvimTreeGitDeleted = { fg = colors.gitDecoration.deletedResourceForeground },
    NvimTreeGitMerge = { fg = colors.gitDecoration.conflictingResourceForeground },

    NvimTreeSymlink = { fg = colors.yellow },
    NvimTreeRootFolder = {
      fg = colors.editor.text,
      bold = true,
    },
    NvimTreeExecFile = { fg = colors.green },
  }
end

return M
