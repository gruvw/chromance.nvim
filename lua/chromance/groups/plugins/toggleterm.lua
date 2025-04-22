local M = {}

--- @param c Colors The color palette
--- @param config Config
function M.get(c, config)
  return {
    TermCursor = {
      bg = c.terminalCursor.foreground,
      fg = c.terminalCursor.background,
    },
    ToggleTerm = {
      bg = c.editor.background,
      fg = c.terminal.foreground,
    },
    ToggleTermNormal = {
      bg = c.editor.background,
      fg = c.terminal.foreground,
    },
    ToggleTermBorder = c.groups.border,
  }
end

return M
