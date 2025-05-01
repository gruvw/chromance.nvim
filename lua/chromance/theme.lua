local ch = require("chromance.utils.color_helper")

local M = {}

---@class Colors
local base_colors = {
  -- background
  black = "#141414", -- dark
  dark = "#1F1F1F",  -- normal
  slate = "#292929", -- light (highlight / selection)

  -- foreground
  grey = "#757575",  -- dark (secondary)
  white = "#F4F4F4", -- foreground

  -- colors
  orange = "#FC9A69",
  yellow = "#FCE369",
  green = "#69FC9A",
  blue = "#69CBFC",
  purple = "#A77DFC",
  red = "#FC6982",
}

-- TODO go through plugins

--- @param options Options
--- @return Colors
function M.colors(options)
  ---@class Colors
  local colors = base_colors;

  colors.editor = {
    background_dark = base_colors.black,
    background = base_colors.dark,
    background_light = base_colors.slate,
    text_dark = base_colors.grey,
    text = base_colors.white,
    title_text = base_colors.yellow,
    border = base_colors.white,
  }

  local semantic_blend_factor = 0.1
  colors.semantic = {
    success_background = ch.blend(base_colors.green, semantic_blend_factor, colors.editor.background),
    success = base_colors.green,
    warning_background = ch.blend(base_colors.orange, semantic_blend_factor, colors.editor.background),
    warning = base_colors.orange,
    error_background = ch.blend(base_colors.red, semantic_blend_factor, colors.editor.background),
    error = base_colors.red,
    info_background = ch.blend(base_colors.blue, semantic_blend_factor, colors.editor.background),
    info = base_colors.blue,
    active = base_colors.yellow,
    ignored = base_colors.grey,
  }

  local edition_blend_factor = 0.08
  colors.edition = {
    added_background = ch.blend(base_colors.green, edition_blend_factor, colors.editor.background),
    added = base_colors.green,
    changed_background = ch.blend(base_colors.yellow, edition_blend_factor, colors.editor.background),
    changed_word_background = ch.blend(base_colors.yellow, edition_blend_factor * 2, colors.editor.background),
    changed = base_colors.yellow,
    deleted_background = ch.blend(base_colors.red, edition_blend_factor, colors.editor.background),
    deleted = base_colors.red,
    ignored = base_colors.grey,
    staged = base_colors.red,
    conflict = base_colors.orange,
  }

  -- common color groups
  colors.groups = {
    normal = {
      bg = colors.editor.background,
      fg = colors.editor.text,
    },
    border = {
      bg = colors.editor.background,
      fg = colors.editor.border,
    },
    match_primary = {
      bg = base_colors.yellow,
      fg = base_colors.dark,
      underline = false,
      bold = true,
    },
    match_secondary = {
      bg = base_colors.orange,
      fg = base_colors.dark,
      underline = false,
      bold = true,
    },
  }

  -- rainbow colors
  local rainbow_blend_factor = 0.4
  colors.rainbow = {
    rainbow1_dark = ch.blend(base_colors.red, rainbow_blend_factor, base_colors.editor.background),
    rainbow1 = base_colors.red,
    rainbow2_dark = ch.blend(base_colors.green, rainbow_blend_factor, base_colors.editor.backrgound),
    rainbow2 = base_colors.green,
    rainbow3_dark = ch.blend(base_colors.yellow, rainbow_blend_factor, base_colors.editor.backrgound),
    rainbow3 = base_colors.yellow,
    rainbow4_dark = ch.blend(base_colors.blue, rainbow_blend_factor, base_colors.editor.backrgound),
    rainbow4 = base_colors.blue,
    rainbow5_dark = ch.blend(base_colors.orange, rainbow_blend_factor, base_colors.editor.backrgound),
    rainbow5 = base_colors.orange,
    rainbow6_dark = ch.blend(base_colors.purple, rainbow_blend_factor, base_colors.editor.backrgound),
    rainbow6 = base_colors.purple,
  }

  -- terminal colors
  colors.terminal = {
    background = base_colors.dark,
    foreground = base_colors.white,
    dark = base_colors.dark,
    black = base_colors.black,
    red = base_colors.red,
    green = base_colors.green,
    yellow = base_colors.yellow,
    blue = base_colors.orange,
    magenta = base_colors.purple,
    cyan = base_colors.blue,
    white = base_colors.white,
    dimmed1 = base_colors.white,
    dimmed2 = base_colors.grey,
    dimmed3 = base_colors.grey,
    dimmed4 = base_colors.grey,
    dimmed5 = base_colors.grey,
  }

  -- allowed icon colors
  colors.icons_colors = {
    base_colors.grey,
    base_colors.white,
    base_colors.orange,
    base_colors.yellow,
    base_colors.green,
    base_colors.blue,
    base_colors.purple,
    base_colors.red,
  }

  return colors
end

return M
