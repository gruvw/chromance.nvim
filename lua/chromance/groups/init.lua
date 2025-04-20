local Helper = require("chromance.utils.color_helper")
local config = require("chromance.config")

-- TODO clean up group init file

---@class ChromanceTheme
---@field mini chromance.theme.plugins.mini
local M = {}

setmetatable(M, {
  __index = function(_, k)
    local plugin = require("chromance.groups.plugins" .. k)
    return plugin
  end,
})

---@enum SupportedPlugins
local PLUGINS = {
  "mini",
  "aerial",
  "alpha",
  "beacon",
  "blink",
  "breadcrumb",
  "bufferline",
  "cmp",
  "coc",
  "dashboard",
  "fidget",
  "fzf-lua",
  "gitsign",
  "illuminate",
  "indent-blankline",
  "lazy",
  "lsp",
  "mason",
  "neo-tree",
  "noice",
  "notify",
  "nvim-navic",
  "nvim-tree",
  "nvim-treesitter",
  "nvim-ts-rainbow2",
  "packer",
  "rainbow-delimiters",
  "renamer",
  "scrollbar",
  "snacks",
  "telescope",
  "toggleterm",
  "ufo",
  "which-key",
  "wilder",
  "luasnip",
  "leap",
}

-- Get highlight group dictionary
-- Example:
-- local hl_groups = {
--   Normal = { bg = c.editor.background, fg = c.editor.foreground, }, -- normal text
--   ["@modifier"] = { fg = c.red, italic = true },
-- }
---@param colors Colors
---@return HighlightGroups
function M.highlight_groups(colors)
  local editor = require("chromance.groups.editor").setup(colors, config.options, Helper)
  local syntax = require("chromance.groups.syntax").setup(colors, config.options, Helper)
  local semantic_tokens = require("chromance.groups.semantic_tokens").setup(colors, config.options, Helper)
  --  The HlGroups class represents a collection of highlighter groups.
  --  Each group is identified by a string key (e.g. "editor") and holds the result of calling the `setup` function of a corresponding highlighter module (e.g. `editor.setup`).
  --  The class has a single field, `hl_groups`, which is a table containing the highlighter groups.
  --- @type HighlightGroups
  local hl_group_tbl = {}
  hl_group_tbl = vim.tbl_deep_extend("force", hl_group_tbl, editor, syntax, semantic_tokens)
  for _, name in ipairs(PLUGINS) do
    local config_ok, plugin = xpcall(require, function(...)
      return ...
    end, "chromance.groups.plugins." .. name)
    if config_ok then
      hl_group_tbl = vim.tbl_deep_extend("force", hl_group_tbl, plugin.get(colors, config.options, Helper))
    end
  end
  return hl_group_tbl
end

return M
