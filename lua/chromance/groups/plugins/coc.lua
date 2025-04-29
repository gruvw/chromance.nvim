local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    CocGitAddedSign = { bg = colors.editor.background, fg = colors.edition.added },
    CocGitChangeRemovedSign = { bg = colors.editor.background, fg = colors.edition.deleted },
    CocGitChangedSign = { bg = colors.editor.background, fg = colors.edition.changed },
    CocGitRemovedSign = { bg = colors.editor.background, fg = colors.edition.staged },
    CocGitTopRemovedSign = { bg = colors.editor.background, fg = colors.edition.staged },
  }
end

return M
