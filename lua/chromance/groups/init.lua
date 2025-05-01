local M = {}

local BASE = {
  "editor",
  "semantic_tokens",
  "syntax",
}

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

local function highlight_groups_for_(colors, options, prefix, modules)
  local hl_groups = {}

  for _, name in ipairs(modules) do
    local plugin = require("chromance.groups." .. prefix .. "." .. name)
    local plugin_hl_groups = plugin.get(colors, options)
    hl_groups = vim.tbl_deep_extend("force", hl_groups, plugin_hl_groups)
  end

  return hl_groups
end

-- Get highlight groups dictionary
---@param colors Colors
---@param options Options
---@return HighlightGroups
function M.highlight_groups(colors, options)
  local base_hl_groups = highlight_groups_for_(colors, options, "base", BASE)
  local plugins_hl_groups = highlight_groups_for_(colors, options, "plugins", PLUGINS)

  return vim.tbl_deep_extend("force", {}, base_hl_groups, plugins_hl_groups)
end

return M
