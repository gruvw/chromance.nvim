local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    LeapLabelPrimary = colors.groups.match_primary,
    LeapLabelSecondary = colors.groups.match_secondary,
  }
end

return M
