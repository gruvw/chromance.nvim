local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    packerString = { fg = colors.blue },
    packerHash = { fg = colors.blue },
    packerOutput = { fg = colors.yellow },
    packerRelDate = { fg = colors.red },
    packerSuccess = { fg = colors.green },
    packerStatusSuccess = { fg = colors.green },
    packerStatusFail = { fg = colors.red, bg = colors.editor.background },
    packerFail = { fg = colors.red, bg = colors.editor.background },
  }
end

return M
