local M = {}

--- @param c Colors The color palette
--- @param config Config
function M.get(c, config, _)
  return {
    WhichKey = { fg = c.blue },
    WhichKeySeperator = { fg = c.red },
    WhichKeyGroup = { fg = c.red },
    WhichKeyDesc = { fg = c.yellow },
    WhichKeyNormal = c.groups.normal,
    WhichKeyBorder = c.groups.border,
  }
end

return M
