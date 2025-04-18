local M = {}

--- @param c Colors The color palette
function M.get(c, _, _)
  return {
    SignAdd = { fg = c.editorGutter.addedBackground },
    SignChange = { fg = c.editorGutter.modifiedBackground },
    SignDelete = { fg = c.editorGutter.deletedBackground },
    GitSignsAdd = { link = "SignAdd" },
    GitSignsChange = { link = "SignChange" },
    GitSignsDelete = { link = "SignDelete" },
    GitSignsCurrentLineBlame = { fg = c.silver },
    GitSignsAddInline = { link = "DiffAdd" },
    GitSignsChangeInline = { link = "DiffChange" },
    GitSignsDeleteInline = { link = "DiffDelete" },
  }
end

return M
