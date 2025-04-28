local M = {}

---@class Options
local default_options = {
  terminal_colors = true,
  devicons = false,
  italic_enabled = true,
}

---@class Options
M.options = nil

---@param options? Options
function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, default_options, options or {})
end

return M
