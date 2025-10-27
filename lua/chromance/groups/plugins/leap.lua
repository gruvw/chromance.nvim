local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    LeapLabelPrimary = colors.groups.match_primary,
    LeapLabelSecondary = colors.groups.match_secondary,
    -- LeapBackdrop = { fg = colors.editor.text_dark, },
  }
end

return M
