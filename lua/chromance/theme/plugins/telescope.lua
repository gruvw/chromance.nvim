local M = {}

--- @param c Colors The color palette
--- @param config Config
--- @param hp Helper
function M.get(c, config, hp)
  local isBackgroundClear = vim.tbl_contains(config.background_clear, "telescope")

  local transparent_bg = c.editor.background
  local transparent_bg_border = c.dimmed2
  -- background
  local preview_bg = c.dimmed5
  local prompt_bg = c.dimmed5
  local result_bg = c.dimmed5
  -- foreground
  local common_fg = c.sideBar.foreground
  return {
    TelescopeSelection = isBackgroundClear and {
      bg = hp.blend(c.editorSuggestWidget.selectedBackground, 0.3, transparent_bg),
      bold = true,
    } or {
      bg = hp.blend(c.green, 0.2, result_bg),
      bold = true,
    },

    TelescopeSelectionCaret = { bg = c.editor.background, fg = c.green, bold = true },
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
    TelescopePromptPrefix = { fg = c.green },

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
