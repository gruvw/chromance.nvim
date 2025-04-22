local M = {}

--- @param c Colors The color palette
function M.get(c, _)
  return {
    LeapLabelPrimary = c.groups.match_primary,
    LeapLabelSecondary = c.groups.match_secondary,
  }
end

return M
