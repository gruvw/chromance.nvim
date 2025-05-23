local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    BlinkCmpMenu = colors.groups.normal,
    -- BlinkCmpMenuSelection = float_winBackgroundClear and {
    --   bg = hp.blend(c.editorSuggestWidget.selectedBackground, 0.7),
    --   bold = true,
    -- } or {
    --   fg = hp.lighten(c.yellow, -15),
    --   bg = c.editorSuggestWidget.selectedBackground,
    --   bold = true,
    -- },
    BlinkCmpLabelDescription = {
      fg = colors.white,
    },
    BlinkCmpLabelDeprecated = {
      fg = nil,
      bg = nil,
      strikethrough = true,
    },
    BlinkCmpGhostText = {
      link = "Comment",
    },
    BlinkCmpLabel = {
      fg = colors.editor.foreground,
    },
    BlinkCmpLabelMatch = colors.groups.match_secondary,
    BlinkCmpSource = {
      fg = colors.editor.foreground,
    },
    BlinkCmpKind = {
      fg = colors.editor.foreground,
    },
    BlinkCmpKindArray = {
      fg = colors.red,
    },
    BlinkCmpKindBoolean = {
      fg = colors.purple,
    },
    BlinkCmpKindClass = {
      fg = colors.blue,
    },
    BlinkCmpKindColor = {
      fg = colors.red,
    },
    BlinkCmpKindConstant = {
      fg = colors.red,
    },
    BlinkCmpKindConstructor = {
      fg = colors.green,
    },
    BlinkCmpKindEnum = {
      fg = colors.blue,
    },
    BlinkCmpKindEnumMember = {
      fg = colors.blue,
    },
    BlinkCmpKindEvent = {
      fg = colors.blue,
    },
    BlinkCmpKindField = {
      fg = colors.blue,
    },
    BlinkCmpKindFile = {
      fg = colors.editor.text,
    },
    BlinkCmpKindFolder = {
      fg = colors.editor.text_dark,
    },
    BlinkCmpKindFunction = {
      fg = colors.green,
    },
    BlinkCmpKindInterface = {
      fg = colors.blue,
    },
    BlinkCmpKindKey = {
      fg = colors.blue,
    },
    BlinkCmpKindKeyword = {
      fg = colors.red,
    },
    BlinkCmpKindMethod = {
      fg = colors.green,
    },
    BlinkCmpKindModule = {
      fg = colors.blue,
    },
    BlinkCmpKindNamespace = {
      fg = colors.blue,
    },
    BlinkCmpKindNull = {
      fg = colors.red,
    },
    BlinkCmpKindNumber = {
      fg = colors.red,
    },
    BlinkCmpKindObject = {
      fg = colors.blue,
    },
    BlinkCmpKindOperator = {
      fg = colors.red,
    },
    BlinkCmpKindPackage = {
      fg = colors.red,
    },
    BlinkCmpKindProperty = {
      fg = colors.blue,
    },
    BlinkCmpKindReference = {
      fg = colors.red,
    },
    BlinkCmpKindSnippet = {
      fg = colors.green,
    },
    BlinkCmpKindString = {
      fg = colors.yellow,
    },
    BlinkCmpKindStruct = {
      fg = colors.red,
    },
    BlinkCmpKindText = {
      fg = colors.yellow,
    },
    BlinkCmpKindTypeParameter = {
      fg = colors.blue,
    },
    BlinkCmpKindUnit = {
      fg = colors.red,
    },
    BlinkCmpKindVariable = {
      fg = colors.blue,
    },
  }
end

return M
