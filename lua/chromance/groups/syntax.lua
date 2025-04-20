local M = {}

--- @param c Colors The color palette
--- @param config Config
function M.setup(c, config, _)
  local styles = config.styles
  return {
    Comment = { fg = c.grey, italic = styles.comment.italic }, -- Comments
    Constant = { fg = c.purple }, -- (preferred) any constant
    String = { fg = c.yellow }, --   a string constant: "this is a string"
    Character = { fg = c.red }, -- a character constant: 'c', '\n'
    Number = { fg = c.red }, -- a number constant: 234, 0xff
    Boolean = { fg = c.red }, -- a boolean constant: TRUE, false
    Float = { fg = c.red }, -- a floating point constant: 2.3e10
    Identifier = { fg = c.white }, -- (preferred) any variable name
    Function = { fg = c.green }, -- function name (also: methods for classes)
    Statement = { fg = c.red }, -- (preferred) any statement
    Conditional = { fg = c.red }, --  if, then, else, endif, switch, etc
    Repeat = { fg = c.red }, -- for, do, while, etc
    Label = { fg = c.red }, -- case, default, etc
    Operator = { fg = c.red }, -- "sizeof", "+", "*", etc
    Keyword = { fg = c.red, italic = styles.keyword.italic }, -- any other keyword
    Exception = { fg = c.red }, -- try, catch, throw
    PreProc = { fg = c.yellow }, -- (preferred) generic Preprocessor
    Include = { fg = c.red }, -- preprocessor #include
    Define = { fg = c.red }, -- preprocessor #define
    Macro = { fg = c.red }, -- same as Define
    PreCondit = { fg = c.red }, -- preprocessor #if, #else, #endif, etc
    Type = { fg = c.white }, -- React, ReactDOM (import React from 'react';)
    StorageClass = { fg = c.red, italic = styles.type.italic }, -- static, register, volatile, etc
    Structure = { fg = c.blue, italic = styles.type.italic }, -- struct, union, enum, etc
    Typedef = { fg = c.red }, -- A typedef
    Special = { fg = c.blue }, -- (preferred) any special symbol
    SpecialChar = { fg = c.blue }, -- special character in a constant
    -- Tag = {}, -- you can use CTRL-] on this
    Delimiter = { fg = c.white }, -- character that needs attention
    SpecialComment = { fg = c.grey }, -- special things inside a comment
    -- Debug = {}, -- debugging statements
    Underlined = { underline = true }, -- (preferred) text that stands out, HTML links
    Bold = { bold = true },
    -- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|
    Italic = { italic = true },
    Error = { fg = c.inputValidation.errorForeground }, -- (preferred) any erroneous construct
    Todo = {
      bg = c.editor.background,
      fg = c.red,
      bold = true,
    }, -- (preferred) anything that needs extra attention; mostly the keywords TO_DO FI_XME etc
    javaAnnotation = { fg = c.grey },
  }
end

return M
