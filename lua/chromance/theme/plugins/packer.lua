local M = {}

--- @param c Colors The color palette
function M.get(c, _, _)
  return {
    packerString = { fg = c.blue },
    packerHash = { fg = c.blue },
    packerOutput = { fg = c.yellow },
    packerRelDate = { fg = c.red },
    packerSuccess = { fg = c.green },
    packerStatusSuccess = { fg = c.green },
    packerStatusFail = { fg = c.red, bg = c.editorHoverWidget.background },
    packerFail = { fg = c.red, bg = c.editorHoverWidget.background },
  }
end

return M
