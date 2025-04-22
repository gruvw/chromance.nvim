local M = {}

--- @param c Colors The color palette
function M.get(c, _)
  return {
    MasonNormal = { link = "LazyNormal" },
    MasonHeader = { link = "LazyH1" },
    MasonHeaderSecondary = {
      bg = c.yellow,
      fg = c.black,
      bold = true,
    },
    MasonHighlight = { fg = c.blue },
    MasonHighlightBlock = { bg = c.yellow, fg = "#222222" },
    MasonHighlightBlockBold = { link = "LazyH1" },
    MasonHighlightSecondary = { fg = c.blue },
    MasonHighlightBlockSecondary = {
      bg = c.blue,
      fg = c.black,
    },
    MasonHighlightBlockBoldSecondary = {
      bg = c.blue,
      fg = c.black,
      bold = true,
    },
    MasonLink = { link = "LazyUrl" },
    MasonMuted = { fg = c.grey },
    MasonMutedBlock = { link = "LazyButton" },
    MasonMutedBlockBold = {
      bg = c.grey,
      fg = c.black,
      bold = true,
    },
    MasonError = { fg = c.red },
    MasonHeading = { link = "LazyH2" },
  }
end

return M
