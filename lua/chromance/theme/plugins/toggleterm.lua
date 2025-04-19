local M = {}

--- @param c Colors The color palette
--- @param config Config
function M.get(c, config, _)
  local isBackgroundClear = vim.tbl_contains(config.background_clear, "toggleterm")
  return {
    TermCursor = {
      bg = c.terminalCursor.foreground,
      fg = c.terminalCursor.background,
    },
    ToggleTerm = {
      bg = isBackgroundClear and c.editor.background or c.terminal.background,
      fg = c.terminal.foreground,
    },
    ToggleTermNormal = {
      bg = isBackgroundClear and c.editor.background or c.terminal.background,
      fg = c.terminal.foreground,
    },
    ToggleTermBorder = {
      bg = c.editor.background,
      fg = isBackgroundClear and c.grey or c.terminal.background,
    },
  }
end

return M
