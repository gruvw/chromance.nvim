local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    Comment = {
      fg = colors.grey,
      italic = options.italic_enabled,
    },
    Constant = {
      fg = colors.purple,
    },
    String = {
      fg = colors.yellow,
    },
    Character = {
      fg = colors.yellow,
    },
    Number = {
      fg = colors.purple,
    },
    Boolean = {
      fg = colors.purple,
    },
    Float = {
      fg = colors.purple,
    },
    Identifier = {
      fg = colors.white,
    },
    Function = {
      fg = colors.green,
    },
    Statement = {
      fg = colors.red,
    },
    Conditional = {
      fg = colors.red,
    },
    Repeat = {
      fg = colors.red,
    },
    Label = {
      fg = colors.red,
    },
    Operator = {
      fg = colors.red,
    },
    Keyword = {
      fg = colors.red,
      italic = options.italic_enabled,
    },
    Exception = {
      fg = colors.red,
    },
    PreProc = {
      fg = colors.yellow,
    },
    Include = {
      fg = colors.red,
    },
    Define = {
      fg = colors.red,
    },
    Macro = {
      fg = colors.red,
      italic = options.italic_enabled,
    },
    PreCondit = {
      fg = colors.red,
    },
    Type = {
      fg = colors.blue,
    },
    StorageClass = {
      fg = colors.blue,
      italic = options.italic_enabled,
    },
    Structure = {
      fg = colors.blue,
    },
    Typedef = {
      fg = colors.red,
    },
    Special = {
      fg = colors.blue,
    },
    SpecialChar = {
      fg = colors.blue,
    },

    Delimiter = {
      fg = colors.white,
    },
    SpecialComment = {
      fg = colors.grey,
    },

    Underlined = {
      underline = true,
    },
    Bold = {
      bold = true,
    },
    Italic = {
      italic = options.italic_enabled,
    },

    Error = {
      fg = colors.semantic.error,
    },
    Todo = {
      bg = colors.editor.background,
      fg = colors.red,
      bold = true,
    },
    javaAnnotation = {
      fg = colors.grey,
    },
  }
end

return M
