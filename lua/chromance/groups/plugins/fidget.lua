local M = {}

--- @param c Colors The color palette
function M.get(c, _)
  return {
    FidgetTask = {
      bg = c.editor.background,
      fg = c.white,
    },
    FidgetTitle = { bg = c.editor.background, fg = c.yellow },
  }
end

return M
