local M = {}

---@param group HighlightGroup
---@param hl_value HighlightValue
local function highlight(group, hl_value)
  local link = hl_value.link
  if link ~= nil then
    -- TODO use nvim lua api to link colortheme
    local cmd = "hi! link " .. group .. " " .. link
    vim.api.nvim_command(cmd)
    return
  end
  vim.api.nvim_set_hl(0, group, hl_value)
end

---@param hl_groups? HighlightGroups
M.apply_groups = function(hl_groups)
  if hl_groups == nil then
    return
  end
  for hl_group, value in pairs(hl_groups) do
    highlight(hl_group, value)
  end
end

return M
