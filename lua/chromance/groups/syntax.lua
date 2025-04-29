local M = {}

--- @param colors Colors
--- @param options Options
function M.setup(colors, options)
  return {
    Comment = { fg = colors.grey, italic = options.italic_enabled, }, -- Comments
    Constant = { fg = colors.purple }, -- (preferred) any constant
    String = { fg = colors.yellow }, --   a string constant: "this is a string"
    Character = { fg = colors.red }, -- a character constant: 'c', '\n'
    Number = { fg = colors.purple }, -- a number constant: 234, 0xff
    Boolean = { fg = colors.purple }, -- a boolean constant: TRUE, false
    Float = { fg = colors.red }, -- a floating point constant: 2.3e10
    Identifier = { fg = colors.white }, -- (preferred) any variable name
    Function = { fg = colors.green }, -- function name (also: methods for classes)
    Statement = { fg = colors.red }, -- (preferred) any statement
    Conditional = { fg = colors.red }, --  if, then, else, endif, switch, etc
    Repeat = { fg = colors.red }, -- for, do, while, etc
    Label = { fg = colors.red }, -- case, default, etc
    Operator = { fg = colors.red }, -- "sizeof", "+", "*", etc
    Keyword = { fg = colors.red, italic = options.italic_enabled, }, -- any other keyword
    Exception = { fg = colors.red }, -- try, catch, throw
    PreProc = { fg = colors.yellow }, -- (preferred) generic Preprocessor
    Include = { fg = colors.red }, -- preprocessor #include
    Define = { fg = colors.red }, -- preprocessor #define
    Macro = { fg = colors.blue, italic = options.italic_enabled, }, -- same as Define
    PreCondit = { fg = colors.red }, -- preprocessor #if, #else, #endif, etc
    Type = { fg = colors.white }, -- React, ReactDOM (import React from 'react';)
    StorageClass = { fg = colors.red, italic = options.italic_enabled, }, -- static, register, volatile, etc
    Structure = { fg = colors.blue, }, -- struct, union, enum, etc
    Typedef = { fg = colors.red }, -- A typedef
    Special = { fg = colors.blue }, -- (preferred) any special symbol
    SpecialChar = { fg = colors.blue }, -- special character in a constant
    -- Tag = {}, -- you can use CTRL-] on this
    Delimiter = { fg = colors.white }, -- character that needs attention
    SpecialComment = { fg = colors.grey }, -- special things inside a comment
    -- Debug = {}, -- debugging statements
    Underlined = { underline = true }, -- (preferred) text that stands out, HTML links
    Bold = { bold = true },
    -- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|
    Italic = { italic = options.italic_enabled },
    Error = { fg = colors.inputValidation.errorForeground }, -- (preferred) any erroneous construct
    Todo = {
      bg = colors.editor.background,
      fg = colors.red,
      bold = true,
    }, -- (preferred) anything that needs extra attention; mostly the keywords TO_DO FI_XME etc
    javaAnnotation = { fg = colors.grey },
  }
end

return M
