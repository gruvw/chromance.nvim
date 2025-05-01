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
    TelescopeMatching = colors.groups.match_primary,

    TelescopePreviewLine = {
      link = "TelescopeSelection",
    },

    -- prompt
    TelescopePromptTitle = {
      bg = colors.yellow,
      fg = colors.black,
      bold = true,
    },
    TelescopePromptNormal = colors.groups.normal,
    TelescopePromptBorder = colors.groups.border,
    TelescopePromptPrefix = {
      fg = colors.green,
    },

    -- preview
    TelescopePreviewTitle = {
      bg = colors.yellow,
      fg = colors.black,
      bold = true,
    },
    TelescopePreviewNormal = colors.groups.normal,
    TelescopePreviewBorder = colors.groups.border,

    -- result
    TelescopeResultsTitle = {
      bg = colors.yellow,
      fg = colors.black,
      bold = true,
    },
    TelescopeResultsNormal = colors.groups.normal,
    TelescopeResultsBorder = colors.groups.border,
  }
end

return M
