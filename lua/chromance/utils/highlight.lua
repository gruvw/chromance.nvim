local M = {}

---@param hl_groups? HighlightGroups
function M.apply_highlights(hl_groups)
  if hl_groups == nil then
    return
  end

  for group, highlight in pairs(hl_groups) do
    vim.api.nvim_set_hl(0, group, highlight)
  end
end

return M
