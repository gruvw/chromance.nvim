local M = {}

-- TODO clear config options

---@class ChromanceOptions
---@field plugins? PluginConfig
local default_options = {
  transparent_background = false,
  terminal_colors = true,
  devicons = false,
  styles = {
    comment = { italic = true },
    keyword = { italic = true }, -- any other keyword
    type = { italic = true }, -- (preferred) int, long, char, etc
    storageclass = { italic = true }, -- static, register, volatile, etc
    structure = { italic = true }, -- struct, union, enum, etc
    parameter = { italic = true }, -- parameter pass in function
    annotation = { italic = true },
    tag_attribute = { italic = true }, -- attribute of tag in reactjs
  },
  inc_search = "background", -- underline | background
  background_clear = {
    "toggleterm",
    "telescope",
    "renamer",
    "notify",
  },
  plugins = {
    bufferline = {
      underline_selected = false,
      underline_visible = false,
      underline_fill = false,
      bold = true,
    },
    indent_blankline = {
      context_highlight = "default", -- default | pro
      context_start_underline = false,
    },
  },
}

---@class Config: ChromanceOptions
M.options = nil

---@param options? ChromanceOptions
function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, default_options, options or {})
end

---@param options? ChromanceOptions
function M.extend(options)
  return options and vim.tbl_deep_extend("force", {}, M.options, options) or M.options
end

M.setup()

return M
