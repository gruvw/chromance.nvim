local M = {}

--- @param c Colors The color palette
function M.get(c, _)
  return {
    HighlightUndo = c.groups.match_secondary,
    HighlightRedo = c.groups.match_secondary,
  }
end

return M
