local hp = require("chromance.utils.color_helper")

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
    border = base_colors.white,
  }

  colors.semantic = {
    success = base_colors.green,
    warning = base_colors.orange,
    error = base_colors.red,
    info = base_colors.blue,
    ignored = base_colors.grey,
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

  -- indent lines colors
  local indent_lines_blend_factor = 0.4
  colors.indent_lines = {
    indent1 = hp.blend(base_colors.red, indent_lines_blend_factor, base_colors.editor.background),
    indent2 = hp.blend(base_colors.green, indent_lines_blend_factor, base_colors.editor.backrgound),
    indent3 = hp.blend(base_colors.blue, indent_lines_blend_factor, base_colors.editor.backrgound),
    indent4 = hp.blend(base_colors.yellow, indent_lines_blend_factor, base_colors.editor.backrgound),
    indent5 = hp.blend(base_colors.orange, indent_lines_blend_factor, base_colors.editor.backrgound),
    indent6 = hp.blend(base_colors.purple, indent_lines_blend_factor, base_colors.editor.backrgound),
  }

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

  -- TODO clear cs groups

  colors.gitDecoration = {
    addedResourceForeground = base_colors.green,          -- "#a9dc76",
    conflictingResourceForeground = base_colors.orange,   -- "#fc9867",
    deletedResourceForeground = base_colors.red,          -- "#ff6188",
    ignoredResourceForeground = base_colors.grey,         -- "#5b595c",
    modifiedResourceForeground = base_colors.yellow,      -- "#ffd866",
    stageDeletedResourceForeground = base_colors.red,     -- "#ff6188",
    stageModifiedResourceForeground = base_colors.yellow, -- "#ffd866",
    untrackedResourceForeground = base_colors.grey,       -- "#c1c0c0",
  }

  colors.inputValidation = {
    errorBackground = base_colors.dark,     -- "#403e41",
    errorBorder = base_colors.red,          -- "#ff6188",
    errorForeground = base_colors.red,      --"#ff6188",
    infoBackground = base_colors.dark,      -- "#403e41",
    infoBorder = base_colors.blue,          --"#78dce8",
    infoForeground = base_colors.blue,      --"#78dce8",
    warningBackground = base_colors.dark,   --"#403e41",
    warningBorder = base_colors.orange,     --"#fc9867",
    warningForeground = base_colors.orange, --"#fc9867",
  }

  colors.errorLens = {
    errorBackground = hp.blend(base_colors.red, 0.1, base_colors.dark),
    errorForeground = base_colors.red,
    warningBackground = hp.blend(base_colors.orange, 0.1, base_colors.dark),
    warningForeground = base_colors.orange,
    infoBackground = hp.blend(base_colors.blue, 0.1, base_colors.dark),
    infoForeground = base_colors.blue,
    hintBackground = hp.blend(base_colors.blue, 0.1, base_colors.dark),
    hintForeground = base_colors.blue,
  }

  colors.editorGroupHeader = {
    tabsBackground = base_colors.black, -- "#221f22",
    tabsBorder = base_colors.black,     -- "#221f22",
  }

  colors.tab = {
    activeBackground = base_colors.dark,
    activeBorder = base_colors.yellow,             -- "#ffd866",
    activeForeground = base_colors.yellow,         -- "#ffd866",
    inactiveBackground = hp.blend(base_colors.dark, 0.15, base_colors.white),
    inactiveForeground = base_colors.grey,         -- "#939293",
    unfocusedActiveBackground = base_colors.dark,  -- "#272822",
    unfocusedActiveBorder = base_colors.grey,      -- "#939293",
    unfocusedActiveForeground = base_colors.white, -- "#c1c0c0",
  }

  colors.statusBar = {
    -- background = p.dark1,
    background = base_colors.black,
    foreground = base_colors.grey,
    activeForeground = base_colors.white,
  }

  colors.diffEditor = {
    insertedLineBackground = hp.blend(base_colors.green, 0.1, base_colors.black),  -- #a9dc7619
    removedLineBackground = hp.blend(base_colors.red, 0.1, base_colors.black),     -- #ff618819
    modifiedLineBackground = hp.blend(base_colors.orange, 0.1, base_colors.black), -- #fc986719
  }

  colors.diffEditorOverview = {
    insertedForeground = hp.blend(base_colors.green, 0.65, colors.diffEditor.insertedLineBackground),  -- #a9dc76a5
    removedForeground = hp.blend(base_colors.red, 0.65, colors.diffEditor.removedLineBackground),      -- #ff6188a5
    modifiedForeground = hp.blend(base_colors.orange, 0.65, colors.diffEditor.modifiedLineBackground), -- #fc9867a5
  }

  colors.notifications = {
    background = base_colors.dark,
    border = base_colors.dark,
    foreground = base_colors.white,
  }
  colors.notificationsErrorIcon = {
    foreground = base_colors.red,
  }
  colors.notificationsInfoIcon = {
    foreground = base_colors.blue,
  }
  colors.notificationsWarningIcon = {
    foreground = base_colors.orange,
  }

  return colors
end

return M
