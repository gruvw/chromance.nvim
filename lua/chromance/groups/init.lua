local M = {}

---@enum SupportedPlugins
local PLUGINS = {
  "mini",
  "aerial",
  "alpha",
  "beacon",
  "blink",
  "breadcrumb",
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
  "highlight-undo",
  "oil",
  "nvim-treesitter-context",
}

-- Get highlight groups dictionary
---@param colors Colors
---@param options Options
---@return HighlightGroups
function M.highlight_groups(colors, options)
  local editor = require("chromance.groups.editor").setup(colors, options)
  local syntax = require("chromance.groups.syntax").setup(colors, options)
  local semantic_tokens = require("chromance.groups.semantic_tokens").setup(colors, options)

  --- @type HighlightGroups
  local hl_group_tbl = {}
  hl_group_tbl = vim.tbl_deep_extend("force", hl_group_tbl, editor, syntax, semantic_tokens)
  for _, name in ipairs(PLUGINS) do
    local plugin = require("chromance.groups.plugins." .. name)
    hl_group_tbl = vim.tbl_deep_extend("force", hl_group_tbl, plugin.get(colors, options))
  end

  return hl_group_tbl
end

return M
