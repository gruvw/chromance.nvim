local M = {}

--- @param c Colors The color palette
--- @param config Config
function M.get(c, config)
  return {
    IndentBlanklineChar = { fg = c.grey },
    IndentBlanklineContextChar = { fg = c.editorIndentGuide.activeBackground, },
    IndentBlanklineContextStart = {
      sp = c.editorIndentGuide.activeBackground,
    },
    IndentBlanklineSpaceChar = { fg = c.grey },
    IndentBlankLineIndent1 = { fg = c.indent_lines.indent1, },
    IndentBlankLineIndent2 = { fg = c.indent_lines.indent2, },
    IndentBlankLineIndent3 = { fg = c.indent_lines.indent3, },
    IndentBlankLineIndent4 = { fg = c.indent_lines.indent4, },
    IndentBlankLineIndent5 = { fg = c.indent_lines.indent5, },
    IndentBlankLineIndent6 = { fg = c.indent_lines.indent6, },
  }
end

return M
