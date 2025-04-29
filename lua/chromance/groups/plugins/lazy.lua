local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    LazyButton = { bg = colors.editor.background_light, fg = colors.editor.text },
    LazyComment = { fg = colors.yellow },
    LazyH1 = { bg = colors.yellow, fg = colors.black, bold = true },
    LazyH2 = { fg = colors.green, bold = true },
    LazyButtonActive = {
      bg = colors.editor.background_light,
      fg = colors.editor.text,
      bold = true,
    },
    LazyNormal = colors.groups.normal,
    LazyProgressDone = { bg = colors.editor.background, fg = colors.tab.activeBorder },
    LazyProgressTodo = {
      bg = colors.editor.background,
      fg = colors.tab.unfocusedActiveBorder,
    },
    LazyProp = {
      bg = colors.editor.background,
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
