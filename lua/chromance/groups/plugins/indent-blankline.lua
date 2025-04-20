local M = {}

--- @param c Colors The color palette
--- @param config Config
function M.get(c, config, _)
  -- pro | default
  local isContextPro = config.plugins.indent_blankline.context_highlight == "pro"
  local isContextStartUnderline = config.plugins.indent_blankline.context_start_underline
  return {
    IndentBlanklineChar = { fg = c.grey },
    IndentBlanklineContextChar = isContextPro and { fg = c.blue } or {
      fg = c.editorIndentGuide.activeBackground,
    },
    IndentBlanklineContextStart = {
      sp = isContextPro and c.blue or c.editorIndentGuide.activeBackground,
      underline = isContextStartUnderline,
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
