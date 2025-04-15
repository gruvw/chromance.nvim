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

    TelescopeSelectionCaret = isBackgroundClear and {
      bg = hp.blend(c.editorSuggestWidget.selectedBackground, 0.3, transparent_bg),
      bold = true,
    } or {
      bg = hp.blend(c.green, 0.2, result_bg),
      fg = c.green,
    },

    TelescopeNormal = isBackgroundClear and {
      bg = c.editor.background,
      fg = common_fg,
    } or {
      bg = c.editorHoverWidget.background,
      fg = common_fg,
    },
    TelescopePromptCounter = {
      fg = c.red,
      bold = true,
    },
    TelescopeBorder = isBackgroundClear and {
      bg = c.editor.background,
      fg = c.tab.unfocusedActiveBorder,
    } or {
      bg = c.editor.background,
      fg = c.editorHoverWidget.background,
    },
    TelescopeMatching = {
      fg = c.cyan,
      bold = true,
    },

    TelescopePreviewLine = { link = "TelescopeSelection" },

    -- prompt
    TelescopePromptTitle = {
      bg = c.yellow,
      fg = c.black,
      bold = true,
    },
    TelescopePromptNormal = isBackgroundClear and {
      bg = transparent_bg,
      fg = common_fg,
    } or {
      bg = prompt_bg,
      fg = common_fg,
    },
    TelescopePromptBorder = isBackgroundClear and {
      bg = transparent_bg,
      fg = transparent_bg_border,
    } or {
      bg = transparent_bg,
      fg = prompt_bg,
    },
    TelescopePromptPrefix = { fg = c.cyan },

    -- preview
    TelescopePreviewTitle = {
      bg = c.yellow,
      fg = c.black,
      bold = true,
    },
    TelescopePreviewNormal = isBackgroundClear and {
      bg = transparent_bg,
      fg = common_fg,
    } or {
      bg = preview_bg,
      fg = common_fg,
    },
    TelescopePreviewBorder = isBackgroundClear and {
      bg = transparent_bg,
      fg = transparent_bg_border,
    } or {
      bg = transparent_bg,
      fg = preview_bg,
    },

    -- result
    TelescopeResultsTitle = {
      bg = c.yellow,
      fg = c.black,
      bold = true,
    },
    TelescopeResultsNormal = isBackgroundClear and {
      bg = transparent_bg,
      fg = common_fg,
    } or {
      bg = result_bg,
      fg = common_fg,
    },
    TelescopeResultsBorder = isBackgroundClear and {
      bg = transparent_bg,
      fg = transparent_bg_border,
    } or {
      bg = transparent_bg,
      fg = result_bg,
    },
  }
end

return M
