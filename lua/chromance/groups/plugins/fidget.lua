local M = {}

--- @param c Colors The color palette
function M.get(c, _, _)
  return {
    FidgetTask = {
      bg = c.editor.background,
      fg = c.base.white,
    },
    FidgetTitle = { bg = c.editor.background, fg = c.base.yellow },
  }
end

return M
