local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    TelescopeSelection = {
      bg = colors.editor.background_light,
      bold = true,
    },

    TelescopeSelectionCaret = {
      bg = colors.editor.background_light,
      fg = colors.green,
      bold = true,
    },
    TelescopeNormal = colors.groups.normal,
    TelescopePromptCounter = {
      fg = colors.red,
      bold = true,
    },
    TelescopeBorder = colors.groups.border,
    TelescopeMatching = colors.groups.match_secondary,

    TelescopePreviewLine = {
      link = "TelescopeSelection",
    },

    -- prompt
    TelescopePromptTitle = colors.groups.match_primary,
    TelescopePromptNormal = colors.groups.normal,
    TelescopePromptBorder = colors.groups.border,
    TelescopePromptPrefix = {
      fg = colors.green,
    },

    -- preview
    TelescopePreviewTitle = colors.groups.match_primary,
    TelescopePreviewNormal = colors.groups.normal,
    TelescopePreviewBorder = colors.groups.border,

    -- result
    TelescopeResultsTitle = colors.groups.match_primary,
    TelescopeResultsNormal = colors.groups.normal,
    TelescopeResultsBorder = colors.groups.border,
  }
end

return M
