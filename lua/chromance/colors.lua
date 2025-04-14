local hp = require("chromance.util.color_helper")

local M = {}

---@class Colors
local colors = {
  dark2 = "#131313",
  dark1 = "#191919",
  background = "#222222",
  text = "#f7f1ff",
  red = "#fc618d",
  orange = "#fd9353",
  yellow = "#fce566",
  green = "#7bd88f",
  cyan = "#5ad4e6",
  purple = "#948ae3",
  dimmed1 = "#bab6c0",
  dimmed2 = "#8b888f",
  dimmed3 = "#69676c",
  dimmed4 = "#525053",
  dimmed5 = "#363537",
};

---@return Colors
function M.get(options)
  ---@class Colors
  local cs = colors;

  cs.editor = {
    background = colors.background,
    foreground = colors.text,
    lineHighlightBackground = hp.blend(colors.text, 0.05, colors.background), -- "#fcfcfa0c", -- background: background
    selectionBackground = hp.blend(colors.dimmed1, 0.15, colors.background), --"#c1c0c027", -- background: background
    findMatchBackground = hp.blend(colors.text, 0.15, colors.background), -- "#fcfcfa26", -- background: background
    findMatchBorder = colors.yellow,
    findMatchHighlightBackground = hp.blend(colors.text, 0.15, colors.background), -- "#fcfcfa26", -- background: background
    foldBackground = hp.blend(colors.text, 0.1, colors.background), -- "#fcfcfa0c", -- background: background
    wordHighlightBackground = hp.blend(colors.text, 0.15, colors.background), -- "#fcfcfa26", -- illuminateRead
    selectionHighlightBackground = hp.blend(colors.text, 0.15, colors.background), -- "#fcfcfa26", -- illuminateText
    wordHighlightStrongBackground = hp.blend(colors.text, 0.15, colors.background), -- "#fcfcfa26", -- illuminateWrite
  }

  cs.editorLineNumber = {
    foreground = colors.dimmed4,
    activeForeground = colors.dimmed1,
  }

  cs.editorHoverWidget = {
    background = colors.dimmed5,
    border = colors.background,
  }

  cs.editorSuggestWidget = {
    background = colors.dimmed5, -- "#403e41",
    border = colors.dimmed5, -- "#403e41",
    foreground = colors.dimmed1, -- "#c1c0c0",
    highlightForeground = colors.text, -- "#fcfcfa",
    selectedBackground = colors.dimmed3, -- "#727072",
  }

  cs.editorIndentGuide = {
    background = colors.dimmed5, -- "#403e41",
    activeBackground = colors.dimmed3, -- "#5b595c",
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
    background = colors.dark1, -- "#221f22",
    foreground = colors.dimmed2, -- "#939293",
  }

  cs.sideBarTitle = {
    foreground = colors.dimmed4, -- "#5b595c",
  }

  cs.list = {
    activeSelectionBackground = hp.blend(colors.text, 0.11, cs.sideBar.background), -- "#fcfcfa1c", -- background: sideBarBackground,
  }

  cs.sideBarSectionHeader = {
    background = colors.dark1, -- "#221f22",
    foreground = colors.dimmed1, -- "#c1c0c0",
  }

  cs.breadcrumb = {
    foreground = colors.dimmed2, -- "#939293",
  }

  cs.button = {
    background = colors.dimmed5, -- "#403e41",
    foreground = colors.dimmed1, -- "#c1c0c0",
    hoverBackground = colors.dimmed4, -- "#5b595c",
    separator = colors.background, -- "#272822",
  }

  cs.scrollbarSlider = {
    hoverBackground = hp.blend(colors.dimmed1, 0.15, colors.background), -- "#c1c0c026", -- background: background
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
    errorBackground = hp.blend(colors.red, 0.1),
    errorForeground = colors.red,
    warningBackground = hp.blend(colors.orange, 0.1),
    warningForeground = colors.orange,
    infoBackground = hp.blend(colors.cyan, 0.1),
    infoForeground = colors.cyan,
    hintBackground = hp.blend(colors.cyan, 0.1),
    hintForeground = colors.cyan,
  }

  cs.terminal = {
    background = colors.dimmed5, -- "#403e41",
    foreground = colors.text, -- "#fcfcfa",
    dark = colors.dark2, -- "#19181a"
    black = colors.dark1, --"#221f22",
    red = colors.red, -- "#ff6188",
    green = colors.green, -- "#a9dc76",
    yellow = colors.yellow, -- "#ffd866",
    blue = colors.orange, -- "#fc9867",
    magenta = colors.purple, -- "#ab9df2",
    cyan = colors.cyan, -- "#78dce8",
    white = colors.text, -- "#fcfcfa",
    dimmed1 = colors.dimmed1, -- "#c1c0c0",
    dimmed2 = colors.dimmed2, -- "#939293",
    dimmed3 = colors.dimmed3, -- "#727072",
    dimmed4 = colors.dimmed4, -- "#5b595c",
    dimmed5 = colors.dimmed5, -- "#403e41",
  }

  cs.terminalCursor = {
    background = "#ffffff", -- "#00000000",
    foreground = colors.text, -- "#fcfcfa",
  }

  cs.editorGroupHeader = {
    tabsBackground = colors.dark1, -- "#221f22",
    tabsBorder = colors.dark1, -- "#221f22",
  }

  cs.tab = {
    activeBackground = colors.background,
    activeBorder = colors.yellow, -- "#ffd866",
    activeForeground = colors.yellow, -- "#ffd866",
    inactiveBackground = hp.lighten(colors.background, 15),
    inactiveForeground = colors.dimmed2, -- "#939293",
    unfocusedActiveBackground = colors.background, -- "#272822",
    unfocusedActiveBorder = colors.dimmed2, -- "#939293",
    unfocusedActiveForeground = colors.dimmed1, -- "#c1c0c0",
  }

  cs.statusBar = {
    -- background = p.dark1,
    background = colors.dark2,
    foreground = colors.dimmed3,
    activeForeground = colors.dimmed1,
  }

  cs.diffEditor = {
    insertedLineBackground = hp.blend(colors.green, 0.1, colors.dark1), -- #a9dc7619
    removedLineBackground = hp.blend(colors.red, 0.1, colors.dark1), -- #ff618819
    modifiedLineBackground = hp.blend(colors.orange, 0.1, colors.dark1), -- #fc986719
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
