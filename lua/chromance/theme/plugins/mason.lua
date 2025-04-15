local M = {}

--- @param c Colors The color palette
function M.get(c, _, _)
  return {
    MasonNormal = { link = "LazyNormal" },
    MasonHeader = { link = "LazyH1" },
    MasonHeaderSecondary = {
      bg = c.yellow,
      fg = c.black,
      bold = true,
    },
    MasonHighlight = { fg = c.cyan },
    MasonHighlightBlock = { bg = c.yellow, fg = "#222222" },
    MasonHighlightBlockBold = { link = "LazyH1" },
    MasonHighlightSecondary = { fg = c.cyan },
    MasonHighlightBlockSecondary = {
      bg = c.cyan,
      fg = c.black,
    },
    MasonHighlightBlockBoldSecondary = {
      bg = c.cyan,
      fg = c.black,
      bold = true,
    },
    MasonLink = { link = "LazyUrl" },
    MasonMuted = { fg = c.dimmed2 },
    MasonMutedBlock = { link = "LazyButton" },
    MasonMutedBlockBold = {
      bg = c.dimmed2,
      fg = c.black,
      bold = true,
    },
    MasonError = { fg = c.red },
    MasonHeading = { link = "LazyH2" },
  }
end

return M
