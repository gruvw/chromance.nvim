local M = {}

--- @param c Colors The color palette
--- @param config Config
--- @param hp Helper
function M.get(c, config, hp)
  return {
    TelescopeSelection = {
      bg = c.editor.lineHighlightBackground,
      bold = true,
    },

    TelescopeSelectionCaret = { bg = c.editor.lineHighlightBackground, fg = c.green, bold = true },
    TelescopeNormal = c.groups.normal,
    TelescopePromptCounter = {
      fg = c.red,
      bold = true,
    },
    TelescopeBorder = c.groups.border,
    TelescopeMatching = c.groups.match_primary,

    TelescopePreviewLine = { link = "TelescopeSelection" },

    -- prompt
    TelescopePromptTitle = {
      bg = c.yellow,
      fg = c.black,
      bold = true,
    },
    TelescopePromptNormal = c.groups.normal,
    TelescopePromptBorder = c.groups.border,
    TelescopePromptPrefix = { fg = c.green, },

    -- preview
    TelescopePreviewTitle = {
      bg = c.yellow,
      fg = c.black,
      bold = true,
    },
    TelescopePreviewNormal = c.groups.normal,
    TelescopePreviewBorder = c.groups.border,

    -- result
    TelescopeResultsTitle = {
      bg = c.yellow,
      fg = c.black,
      bold = true,
    },
    TelescopeResultsNormal = c.groups.normal,
    TelescopeResultsBorder = c.groups.border,
  }
end

return M
