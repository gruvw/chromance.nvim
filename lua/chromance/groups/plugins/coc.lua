local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    CocGitAddedSign = { bg = colors.editor.background, fg = colors.gitDecoration.addedResourceForeground },
    CocGitChangeRemovedSign = { bg = colors.editor.background, fg = colors.gitDecoration.deletedResourceForeground },
    CocGitChangedSign = { bg = colors.editor.background, fg = colors.gitDecoration.modifiedResourceForeground },
    CocGitRemovedSign = { bg = colors.editor.background, fg = colors.gitDecoration.stageDeletedResourceForeground },
    CocGitTopRemovedSign = { bg = colors.editor.background, fg = colors.gitDecoration.stageDeletedResourceForeground },
  }
end

return M
