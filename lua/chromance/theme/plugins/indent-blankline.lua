local M = {}

--- @param c Colors The color palette
--- @param config Config
function M.get(c, config, _)
  -- pro | default
  local isContextPro = config.plugins.indent_blankline.context_highlight == "pro"
  local isContextStartUnderline = config.plugins.indent_blankline.context_start_underline
  return {
    IndentBlanklineChar = { fg = c.editorIndentGuide.background },
    IndentBlanklineContextChar = isContextPro and { fg = c.cyan } or {
      fg = c.editorIndentGuide.activeBackground,
    },
    IndentBlanklineContextStart = {
      sp = isContextPro and c.cyan or c.editorIndentGuide.activeBackground,
      underline = isContextStartUnderline,
    },
    IndentBlanklineSpaceChar = { fg = c.editor.background }, -- highlight the character Tab
    IndentBlankLineIndent1 = { fg = c.red },
    IndentBlankLineIndent2 = { fg = c.cyan },
    IndentBlankLineIndent3 = { fg = c.yellow },
    IndentBlankLineIndent4 = { fg = c.green },
    IndentBlankLineIndent5 = { fg = c.cyan },
    IndentBlankLineIndent6 = { fg = c.red },
  }
end

return M
