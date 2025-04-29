local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    IndentBlanklineChar = { fg = colors.grey },
    IndentBlanklineContextChar = { fg = colors.editor.background_light, },
    IndentBlanklineContextStart = { sp = colors.editor.background_light, },
    IndentBlanklineSpaceChar = { fg = colors.grey },
    IndentBlankLineIndent1 = { fg = colors.indent_lines.indent1, },
    IndentBlankLineIndent2 = { fg = colors.indent_lines.indent2, },
    IndentBlankLineIndent3 = { fg = colors.indent_lines.indent3, },
    IndentBlankLineIndent4 = { fg = colors.indent_lines.indent4, },
    IndentBlankLineIndent5 = { fg = colors.indent_lines.indent5, },
    IndentBlankLineIndent6 = { fg = colors.indent_lines.indent6, },
  }
end

return M
