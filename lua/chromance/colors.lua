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

local hp = require("chromance.color_helper")

---@return ColorschemeOptions
M.get = function()
  local p =
    vim.tbl_deep_extend("force", colors, Config.overridePalette and Config.overridePalette(filter) or {})

  cs.editor = {
    background = Config.transparent_background and "NONE" or p.background,
    foreground = p.text,
    lineHighlightBackground = hp.blend(p.text, 0.05, p.background), -- "#fcfcfa0c", -- background: background
    selectionBackground = hp.blend(p.dimmed1, 0.15, p.background), --"#c1c0c027", -- background: background
    findMatchBackground = hp.blend(p.text, 0.15, p.background), -- "#fcfcfa26", -- background: background
    findMatchBorder = p.accent3,
    findMatchHighlightBackground = hp.blend(p.text, 0.15, p.background), -- "#fcfcfa26", -- background: background
    foldBackground = hp.blend(p.text, 0.1, p.background), -- "#fcfcfa0c", -- background: background
    wordHighlightBackground = hp.blend(p.text, 0.15, p.background), -- "#fcfcfa26", -- illuminateRead
    selectionHighlightBackground = hp.blend(p.text, 0.15, p.background), -- "#fcfcfa26", -- illuminateText
    wordHighlightStrongBackground = hp.blend(p.text, 0.15, p.background), -- "#fcfcfa26", -- illuminateWrite
  }

  cs.editorLineNumber = {
    foreground = p.dimmed4,
    activeForeground = p.dimmed1,
  }

  cs.editorHoverWidget = {
    background = p.dimmed5,
    border = p.background,
  }

  cs.editorSuggestWidget = {
    background = p.dimmed5, -- "#403e41",
    border = p.dimmed5, -- "#403e41",
    foreground = p.dimmed1, -- "#c1c0c0",
    highlightForeground = p.text, -- "#fcfcfa",
    selectedBackground = p.dimmed3, -- "#727072",
  }

  cs.editorIndentGuide = {
    background = p.dimmed5, -- "#403e41",
    activeBackground = p.dimmed3, -- "#5b595c",
  }

  cs.editorInlayHint = {
    background = p.dimmed5,
    foreground = p.dimmed2,
  }

  cs.editorGutter = {
    addedBackground = p.accent4, -- "#a9dc76",
    deletedBackground = p.accent1, -- "#ff6188",
    modifiedBackground = p.accent2, -- "#fc9867",
  }

  cs.sideBar = {
    background = p.dark1, -- "#221f22",
    foreground = p.dimmed2, -- "#939293",
  }

  cs.sideBarTitle = {
    foreground = p.dimmed4, -- "#5b595c",
  }

  cs.list = {
    activeSelectionBackground = hp.blend(p.text, 0.11, cs.sideBar.background), -- "#fcfcfa1c", -- background: sideBarBackground,
  }

  cs.sideBarSectionHeader = {
    background = p.dark1, -- "#221f22",
    foreground = p.dimmed1, -- "#c1c0c0",
  }

  cs.breadcrumb = {
    foreground = p.dimmed2, -- "#939293",
  }

  cs.button = {
    background = p.dimmed5, -- "#403e41",
    foreground = p.dimmed1, -- "#c1c0c0",
    hoverBackground = p.dimmed4, -- "#5b595c",
    separator = p.background, -- "#272822",
  }

  cs.scrollbarSlider = {
    hoverBackground = hp.blend(p.dimmed1, 0.15, p.background), -- "#c1c0c026", -- background: background
  }

  cs.gitDecoration = {
    addedResourceForeground = p.accent4, -- "#a9dc76",
    conflictingResourceForeground = p.accent2, -- "#fc9867",
    deletedResourceForeground = p.accent1, -- "#ff6188",
    ignoredResourceForeground = p.dimmed4, -- "#5b595c",
    modifiedResourceForeground = p.accent3, -- "#ffd866",
    stageDeletedResourceForeground = p.accent1, -- "#ff6188",
    stageModifiedResourceForeground = p.accent3, -- "#ffd866",
    untrackedResourceForeground = p.dimmed2, -- "#c1c0c0",
  }

  cs.inputValidation = {
    errorBackground = p.dimmed5, -- "#403e41",
    errorBorder = p.accent1, -- "#ff6188",
    errorForeground = p.accent1, --"#ff6188",
    infoBackground = p.dimmed5, -- "#403e41",
    infoBorder = p.accent5, --"#78dce8",
    infoForeground = p.accent5, --"#78dce8",
    warningBackground = p.dimmed5, --"#403e41",
    warningBorder = p.accent2, --"#fc9867",
    warningForeground = p.accent2, --"#fc9867",
  }

  cs.errorLens = {
    errorBackground = hp.blend(p.accent1, 0.1),
    errorForeground = p.accent1,
    warningBackground = hp.blend(p.accent2, 0.1),
    warningForeground = p.accent2,
    infoBackground = hp.blend(p.accent5, 0.1),
    infoForeground = p.accent5,
    hintBackground = hp.blend(p.accent5, 0.1),
    hintForeground = p.accent5,
  }

  cs.terminal = {
    background = p.dimmed5, -- "#403e41",
    foreground = p.text, -- "#fcfcfa",
  }

  cs.terminalCursor = {
    background = "#ffffff", -- "#00000000",
    foreground = p.text, -- "#fcfcfa",
  }

  cs.editorGroupHeader = {
    tabsBackground = p.dark1, -- "#221f22",
    tabsBorder = p.dark1, -- "#221f22",
  }

  cs.tab = {
    activeBackground = Config.transparent_background and "NONE" or p.background, -- "#272822",
    activeBorder = p.accent3, -- "#ffd866",
    activeForeground = p.accent3, -- "#ffd866",
    inactiveBackground = hp.lighten(p.background, 15),
    inactiveForeground = p.dimmed2, -- "#939293",
    unfocusedActiveBackground = p.background, -- "#272822",
    unfocusedActiveBorder = p.dimmed2, -- "#939293",
    unfocusedActiveForeground = p.dimmed1, -- "#c1c0c0",
  }

  cs.statusBar = {
    -- background = p.dark1,
    background = p.dark2,
    foreground = p.dimmed3,
    activeForeground = p.dimmed1,
  }

  cs.diffEditor = {
    insertedLineBackground = hp.blend(p.accent4, 0.1, p.dark1), -- #a9dc7619
    removedLineBackground = hp.blend(p.accent1, 0.1, p.dark1), -- #ff618819
    modifiedLineBackground = hp.blend(p.accent2, 0.1, p.dark1), -- #fc986719
  }

  cs.diffEditorOverview = {
    insertedForeground = hp.blend(p.accent4, 0.65, cs.diffEditor.insertedLineBackground), -- #a9dc76a5
    removedForeground = hp.blend(p.accent1, 0.65, cs.diffEditor.removedLineBackground), -- #ff6188a5
    modifiedForeground = hp.blend(p.accent2, 0.65, cs.diffEditor.modifiedLineBackground), -- #fc9867a5
  }

  cs.notifications = {
    background = p.dimmed5,
    border = p.dimmed5,
    foreground = p.dimmed1,
  }
  cs.notificationsErrorIcon = {
    foreground = p.accent1,
  }
  cs.notificationsInfoIcon = {
    foreground = p.accent5,
  }
  cs.notificationsWarningIcon = {
    foreground = p.accent2,
  }

  cs = vim.tbl_deep_extend("force", cs, Config.overrideScheme and Config.overrideScheme(cs, p, Config, hp) or {})

  return cs
end

return colors
