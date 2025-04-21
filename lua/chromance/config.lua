local M = {}

---@class ChromanceOptions
local default_options = {
  terminal_colors = true,
  devicons = false,
  italic_disabled = false,
}

---@class Config: ChromanceOptions
M.options = nil

---@param options? ChromanceOptions
function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, default_options, options or {})
end

return M
