local M = {}

--- @param c Colors The color palette
function M.get(c, _, _)
  return {
    LeapLabelPrimary = c.styles.matchPrimary,
    LeapLabelSecondary = c.styles.matchSecondary,
  }
end

return M
