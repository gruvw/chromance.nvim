local util = require("chromance.util")
---@class ChromanceOptions
---@field plugins? PluginConfig
local config = {
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
local M = setmetatable({}, {
  __index = function(_, k)
    return rawget(config or {}, k)
  end,
  __newindex = function(t, k, v)
    if rawget(config or {}, k) ~= nil then
      error("chromance.nvim: Attempt to change option " .. k .. " directly, use `setup` instead")
    else
      rawset(t, k, v)
    end
  end,
  __call = function(t, ...)
    return t.setup(...)
  end,
})

---@param options? ChromanceOptions
M.setup = function(options)
  config = vim.tbl_deep_extend("force", config, options or {})
end

---@param options? ChromanceOptions
M.extend = function(options)
  config = vim.tbl_deep_extend("force", {}, config or options, options or {})
end

M.setup()

return M
