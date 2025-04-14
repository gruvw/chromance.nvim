local hp = require("chromance.util.color_helper")

local M = {}

---@class Colors
local colors = {
  dark2 = "#131313",
  dark1 = "#191919",
  background = "#222222",
  text = "#f7f1ff",
  accent1 = "#fc618d",
  accent2 = "#fd9353",
  accent3 = "#fce566",
  accent4 = "#7bd88f",
  accent5 = "#5ad4e6",
  accent6 = "#948ae3",
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
    findMatchBorder = colors.accent3,
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
    addedBackground = colors.accent4, -- "#a9dc76",
    deletedBackground = colors.accent1, -- "#ff6188",
    modifiedBackground = colors.accent2, -- "#fc9867",
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
    addedResourceForeground = colors.accent4, -- "#a9dc76",
    conflictingResourceForeground = colors.accent2, -- "#fc9867",
    deletedResourceForeground = colors.accent1, -- "#ff6188",
    ignoredResourceForeground = colors.dimmed4, -- "#5b595c",
    modifiedResourceForeground = colors.accent3, -- "#ffd866",
    stageDeletedResourceForeground = colors.accent1, -- "#ff6188",
    stageModifiedResourceForeground = colors.accent3, -- "#ffd866",
    untrackedResourceForeground = colors.dimmed2, -- "#c1c0c0",
  }

  cs.inputValidation = {
    errorBackground = colors.dimmed5, -- "#403e41",
    errorBorder = colors.accent1, -- "#ff6188",
    errorForeground = colors.accent1, --"#ff6188",
    infoBackground = colors.dimmed5, -- "#403e41",
    infoBorder = colors.accent5, --"#78dce8",
    infoForeground = colors.accent5, --"#78dce8",
    warningBackground = colors.dimmed5, --"#403e41",
    warningBorder = colors.accent2, --"#fc9867",
    warningForeground = colors.accent2, --"#fc9867",
  }

  cs.errorLens = {
    errorBackground = hp.blend(colors.accent1, 0.1),
    errorForeground = colors.accent1,
    warningBackground = hp.blend(colors.accent2, 0.1),
    warningForeground = colors.accent2,
    infoBackground = hp.blend(colors.accent5, 0.1),
    infoForeground = colors.accent5,
    hintBackground = hp.blend(colors.accent5, 0.1),
    hintForeground = colors.accent5,
  }

  cs.terminal = {
    background = colors.dimmed5, -- "#403e41",
    foreground = colors.text, -- "#fcfcfa",
    dark = colors.dark2, -- "#19181a"
    black = colors.dark1, --"#221f22",
    red = colors.accent1, -- "#ff6188",
    green = colors.accent4, -- "#a9dc76",
    yellow = colors.accent3, -- "#ffd866",
    blue = colors.accent2, -- "#fc9867",
    magenta = colors.accent6, -- "#ab9df2",
    cyan = colors.accent5, -- "#78dce8",
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
    activeBorder = colors.accent3, -- "#ffd866",
    activeForeground = colors.accent3, -- "#ffd866",
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
    insertedLineBackground = hp.blend(colors.accent4, 0.1, colors.dark1), -- #a9dc7619
    removedLineBackground = hp.blend(colors.accent1, 0.1, colors.dark1), -- #ff618819
    modifiedLineBackground = hp.blend(colors.accent2, 0.1, colors.dark1), -- #fc986719
  }

  cs.diffEditorOverview = {
    insertedForeground = hp.blend(colors.accent4, 0.65, cs.diffEditor.insertedLineBackground), -- #a9dc76a5
    removedForeground = hp.blend(colors.accent1, 0.65, cs.diffEditor.removedLineBackground), -- #ff6188a5
    modifiedForeground = hp.blend(colors.accent2, 0.65, cs.diffEditor.modifiedLineBackground), -- #fc9867a5
  }

  cs.notifications = {
    background = colors.dimmed5,
    border = colors.dimmed5,
    foreground = colors.dimmed1,
  }
  cs.notificationsErrorIcon = {
    foreground = colors.accent1,
  }
  cs.notificationsInfoIcon = {
    foreground = colors.accent5,
  }
  cs.notificationsWarningIcon = {
    foreground = colors.accent2,
  }

  return cs
end

return M
