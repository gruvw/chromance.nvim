local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    TermCursor = { link = "Cursor", },
    ToggleTerm = {
      bg = colors.editor.background,
      fg = colors.terminal.foreground,
    },
    ToggleTermNormal = {
      bg = colors.editor.background,
      fg = colors.terminal.foreground,
    },
    ToggleTermBorder = colors.groups.border,
  }
end

return M
