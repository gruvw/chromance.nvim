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
      bg = colors.editor.background_light,
      -- bg_base = sidebar_bg,
    },

    NvimTreeGitIgnored = { fg = colors.edition.ignored },
    NvimTreeGitignoreIcon = { fg = colors.edition.ignored },
    NvimTreeGitStaged = { fg = colors.edition.staged },
    NvimTreeGitDirty = { fg = colors.edition.changed }, -- unstaged/modified
    NvimTreeGitNew = { fg = colors.edition.ignored },
    NvimTreeGitRenamed = { fg = colors.edition.ignored },
    NvimTreeGitDeleted = { fg = colors.edition.deletedResourceForeground },
    NvimTreeGitMerge = { fg = colors.edition.conflict },

    NvimTreeSymlink = { fg = colors.yellow },
    NvimTreeRootFolder = {
      fg = colors.editor.text,
      bold = true,
    },
    NvimTreeExecFile = { fg = colors.green },
  }
end

return M
