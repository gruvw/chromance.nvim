local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    HighlightUndo = colors.groups.match_secondary,
    HighlightRedo = colors.groups.match_secondary,
  }
end

return M
