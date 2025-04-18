local config = require("chromance.config")
local hp = require("chromance.utils.color_helper")

local M = {}

-- TODO setup basic colors
-- TODO apply new colors everywhere

---@class Colors
local colors = {
  black = "#0F0F0F",
  dark = "#1F1F1F",
  grey = "#707070",
  white = "#F2F2F2",
  red = "#fc618d",
  orange = "#fd9353",
  yellow = "#fce566",
  green = "#7bd88f",
  cyan = "#5ad4e6",
  purple = "#948ae3",
  dark2 = "#131313",
  dimmed1 = "#bab6c0",
  dimmed2 = "#8A8A8A",
  dimmed4 = "#525053",
  dimmed5 = "#363537",
};

-- TODO clear cs groups
-- TODO try to avoid the get call (try to apply config overwrite and check if it works, also test lualine, overwrite yellow to try)

---@return Colors
function M.get()
  -- use to change colors based on config
  local options = config.options

  ---@class Colors
  local cs = colors;

  -- allowed icon colors
  cs.icon_colors = {
    colors.white,
    colors.red,
    colors.orange,
    colors.yellow,
    colors.green,
    colors.cyan,
    colors.purple,
    colors.grey,
  }

  cs.editor = {
    background = colors.dark,
    text = colors.white,
    border = colors.white,
    lineHighlightBackground = hp.blend(colors.white, 0.05, colors.dark), -- "#fcfcfa0c", -- background: background
    selectionBackground = hp.blend(colors.dimmed1, 0.15, colors.dark), --"#c1c0c027", -- background: background
    findMatchBackground = hp.blend(colors.white, 0.15, colors.dark), -- "#fcfcfa26", -- background: background
    findMatchBorder = colors.yellow,
    findMatchHighlightBackground = hp.blend(colors.white, 0.15, colors.dark), -- "#fcfcfa26", -- background: background
    foldBackground = hp.blend(colors.white, 0.1, colors.dark), -- "#fcfcfa0c", -- background: background
    wordHighlightBackground = hp.blend(colors.white, 0.15, colors.dark), -- "#fcfcfa26", -- illuminateRead
    selectionHighlightBackground = hp.blend(colors.white, 0.15, colors.dark), -- "#fcfcfa26", -- illuminateText
    wordHighlightStrongBackground = hp.blend(colors.white, 0.15, colors.dark), -- "#fcfcfa26", -- illuminateWrite
  }

  cs.styles = {
    normal = {
      bg = cs.editor.background,
      fg = cs.editor.text,
    },
    border = {
      bg = cs.editor.background,
      fg = cs.editor.border,
    },
    matchPrimary = {
      bg = colors.yellow,
      fg = colors.dark,
      underline = false,
      bold = true,
    },
    matchSecondary = {
      bg = colors.orange,
      fg = colors.dark,
      underline = false,
      bold = true,
    },
  }

  cs.editorLineNumber = {
    foreground = colors.dimmed4,
    activeForeground = colors.dimmed1,
  }

  cs.editorHoverWidget = {
    background = colors.dimmed5,
    border = colors.dark,
  }

  cs.editorSuggestWidget = {
    background = colors.dimmed5, -- "#403e41",
    border = colors.dimmed5, -- "#403e41",
    foreground = colors.dimmed1, -- "#c1c0c0",
    highlightForeground = colors.white, -- "#fcfcfa",
    selectedBackground = colors.grey, -- "#727072",
  }

  cs.editorIndentGuide = {
    background = colors.dimmed5, -- "#403e41",
    activeBackground = colors.grey, -- "#5b595c",
  }

  cs.editorInlayHint = {
    background = colors.dimmed5,
    foreground = colors.dimmed2,
  }

  cs.editorGutter = {
    addedBackground = colors.green, -- "#a9dc76",
    deletedBackground = colors.red, -- "#ff6188",
    modifiedBackground = colors.orange, -- "#fc9867",
  }

  cs.sideBar = {
    background = colors.black, -- "#221f22",
    foreground = colors.dimmed2, -- "#939293",
  }

  cs.sideBarTitle = {
    foreground = colors.dimmed4, -- "#5b595c",
  }

  cs.list = {
    activeSelectionBackground = hp.blend(colors.white, 0.11, cs.sideBar.background), -- "#fcfcfa1c", -- background: sideBarBackground,
  }

  cs.sideBarSectionHeader = {
    background = colors.black, -- "#221f22",
    foreground = colors.dimmed1, -- "#c1c0c0",
  }

  cs.breadcrumb = {
    foreground = colors.dimmed2, -- "#939293",
  }

  cs.button = {
    background = colors.dimmed5, -- "#403e41",
    foreground = colors.dimmed1, -- "#c1c0c0",
    hoverBackground = colors.dimmed4, -- "#5b595c",
    separator = colors.dark, -- "#272822",
  }

  cs.scrollbarSlider = {
    hoverBackground = hp.blend(colors.dimmed1, 0.15, colors.dark), -- "#c1c0c026", -- background: background
  }

  cs.gitDecoration = {
    addedResourceForeground = colors.green, -- "#a9dc76",
    conflictingResourceForeground = colors.orange, -- "#fc9867",
    deletedResourceForeground = colors.red, -- "#ff6188",
    ignoredResourceForeground = colors.dimmed4, -- "#5b595c",
    modifiedResourceForeground = colors.yellow, -- "#ffd866",
    stageDeletedResourceForeground = colors.red, -- "#ff6188",
    stageModifiedResourceForeground = colors.yellow, -- "#ffd866",
    untrackedResourceForeground = colors.dimmed2, -- "#c1c0c0",
  }

  cs.inputValidation = {
    errorBackground = colors.dimmed5, -- "#403e41",
    errorBorder = colors.red, -- "#ff6188",
    errorForeground = colors.red, --"#ff6188",
    infoBackground = colors.dimmed5, -- "#403e41",
    infoBorder = colors.cyan, --"#78dce8",
    infoForeground = colors.cyan, --"#78dce8",
    warningBackground = colors.dimmed5, --"#403e41",
    warningBorder = colors.orange, --"#fc9867",
    warningForeground = colors.orange, --"#fc9867",
  }

  cs.errorLens = {
    errorBackground = hp.blend(colors.red, 0.1, colors.dark),
    errorForeground = colors.red,
    warningBackground = hp.blend(colors.orange, 0.1, colors.dark),
    warningForeground = colors.orange,
    infoBackground = hp.blend(colors.cyan, 0.1, colors.dark),
    infoForeground = colors.cyan,
    hintBackground = hp.blend(colors.cyan, 0.1, colors.dark),
    hintForeground = colors.cyan,
  }

  cs.terminal = {
    background = colors.dimmed5, -- "#403e41",
    foreground = colors.white, -- "#fcfcfa",
    dark = colors.dark2, -- "#19181a"
    black = colors.black, --"#221f22",
    red = colors.red, -- "#ff6188",
    green = colors.green, -- "#a9dc76",
    yellow = colors.yellow, -- "#ffd866",
    blue = colors.orange, -- "#fc9867",
    magenta = colors.purple, -- "#ab9df2",
    cyan = colors.cyan, -- "#78dce8",
    white = colors.white, -- "#fcfcfa",
    dimmed1 = colors.dimmed1, -- "#c1c0c0",
    dimmed2 = colors.dimmed2, -- "#939293",
    dimmed3 = colors.grey, -- "#727072",
    dimmed4 = colors.dimmed4, -- "#5b595c",
    dimmed5 = colors.dimmed5, -- "#403e41",
  }

  cs.terminalCursor = {
    background = "#ffffff", -- "#00000000",
    foreground = colors.white, -- "#fcfcfa",
  }

  cs.editorGroupHeader = {
    tabsBackground = colors.black, -- "#221f22",
    tabsBorder = colors.black, -- "#221f22",
  }

  cs.tab = {
    activeBackground = colors.dark,
    activeBorder = colors.yellow, -- "#ffd866",
    activeForeground = colors.yellow, -- "#ffd866",
    inactiveBackground = hp.blend(colors.dark, 0.15, colors.white),
    inactiveForeground = colors.dimmed2, -- "#939293",
    unfocusedActiveBackground = colors.dark, -- "#272822",
    unfocusedActiveBorder = colors.dimmed2, -- "#939293",
    unfocusedActiveForeground = colors.dimmed1, -- "#c1c0c0",
  }

  cs.statusBar = {
    -- background = p.dark1,
    background = colors.dark2,
    foreground = colors.grey,
    activeForeground = colors.dimmed1,
  }

  cs.diffEditor = {
    insertedLineBackground = hp.blend(colors.green, 0.1, colors.black), -- #a9dc7619
    removedLineBackground = hp.blend(colors.red, 0.1, colors.black), -- #ff618819
    modifiedLineBackground = hp.blend(colors.orange, 0.1, colors.black), -- #fc986719
  }

  cs.diffEditorOverview = {
    insertedForeground = hp.blend(colors.green, 0.65, cs.diffEditor.insertedLineBackground), -- #a9dc76a5
    removedForeground = hp.blend(colors.red, 0.65, cs.diffEditor.removedLineBackground), -- #ff6188a5
    modifiedForeground = hp.blend(colors.orange, 0.65, cs.diffEditor.modifiedLineBackground), -- #fc9867a5
  }

  cs.notifications = {
    background = colors.dimmed5,
    border = colors.dimmed5,
    foreground = colors.dimmed1,
  }
  cs.notificationsErrorIcon = {
    foreground = colors.red,
  }
  cs.notificationsInfoIcon = {
    foreground = colors.cyan,
  }
  cs.notificationsWarningIcon = {
    foreground = colors.orange,
  }

  return cs
end

return M
