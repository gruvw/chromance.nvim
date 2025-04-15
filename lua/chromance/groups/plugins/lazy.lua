local M = {}

--- @param c Colors The color palette
--- @param hp Helper
function M.get(c, _, hp)
  local lazy_bg = c.sideBar.background
  return {
    LazyButton = { bg = c.button.background, fg = c.button.foreground },
    LazyComment = { fg = c.yellow },
    LazyH1 = { bg = c.yellow, fg = c.black, bold = true },
    LazyH2 = { fg = c.green, bold = true },
    LazyButtonActive = {
      bg = c.button.hoverBackground,
      fg = c.button.foreground,
      bold = true,
    },
    LazyNormal = {
      bg = lazy_bg,
      fg = c.sideBar.foreground,
    },
    LazyProgressDone = { bg = lazy_bg, fg = c.tab.activeBorder },
    LazyProgressTodo = {
      bg = lazy_bg,
      fg = c.tab.unfocusedActiveBorder,
    },
    LazyProp = {
      bg = lazy_bg,
      fg = c.green,
    },
    LazyUrl = { fg = c.cyan },
    LazyDir = { link = "LazyUrl" },
    LazySpecial = { fg = c.yellow, bold = true },
    LazyReasonStart = { fg = c.green },
    LazyReasonCmd = { fg = c.cyan },
  }
end

return M
