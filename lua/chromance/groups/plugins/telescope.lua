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
    TelescopeNormal = c.styles.normal,
    TelescopePromptCounter = {
      fg = c.red,
      bold = true,
    },
    TelescopeBorder = c.styles.border,
    TelescopeMatching = c.styles.matchPrimary,

    TelescopePreviewLine = { link = "TelescopeSelection" },

    -- prompt
    TelescopePromptTitle = {
      bg = c.yellow,
      fg = c.black,
      bold = true,
    },
    TelescopePromptNormal = c.styles.normal,
    TelescopePromptBorder = c.styles.border,
    TelescopePromptPrefix = { fg = c.green, },

    -- preview
    TelescopePreviewTitle = {
      bg = c.yellow,
      fg = c.black,
      bold = true,
    },
    TelescopePreviewNormal = c.styles.normal,
    TelescopePreviewBorder = c.styles.border,

    -- result
    TelescopeResultsTitle = {
      bg = c.yellow,
      fg = c.black,
      bold = true,
    },
    TelescopeResultsNormal = c.styles.normal,
    TelescopeResultsBorder = c.styles.border,
  }
end

return M
