local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  local lazy_bg = colors.sideBar.background
  return {
    LazyButton = { bg = colors.button.background, fg = colors.button.foreground },
    LazyComment = { fg = colors.yellow },
    LazyH1 = { bg = colors.yellow, fg = colors.black, bold = true },
    LazyH2 = { fg = colors.green, bold = true },
    LazyButtonActive = {
      bg = colors.button.hoverBackground,
      fg = colors.button.foreground,
      bold = true,
    },
    LazyNormal = {
      bg = lazy_bg,
      fg = colors.sideBar.foreground,
    },
    LazyProgressDone = { bg = lazy_bg, fg = colors.tab.activeBorder },
    LazyProgressTodo = {
      bg = lazy_bg,
      fg = colors.tab.unfocusedActiveBorder,
    },
    LazyProp = {
      bg = lazy_bg,
      fg = colors.green,
    },
    LazyUrl = { fg = colors.blue },
    LazyDir = { link = "LazyUrl" },
    LazySpecial = { fg = colors.yellow, bold = true },
    LazyReasonStart = { fg = colors.green },
    LazyReasonCmd = { fg = colors.blue },
  }
end

return M
