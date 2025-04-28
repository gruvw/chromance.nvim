local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    MasonNormal = { link = "LazyNormal" },
    MasonHeader = { link = "LazyH1" },
    MasonHeaderSecondary = {
      bg = colors.yellow,
      fg = colors.black,
      bold = true,
    },
    MasonHighlight = { fg = colors.blue },
    MasonHighlightBlock = { bg = colors.yellow, fg = "#222222" },
    MasonHighlightBlockBold = { link = "LazyH1" },
    MasonHighlightSecondary = { fg = colors.blue },
    MasonHighlightBlockSecondary = {
      bg = colors.blue,
      fg = colors.black,
    },
    MasonHighlightBlockBoldSecondary = {
      bg = colors.blue,
      fg = colors.black,
      bold = true,
    },
    MasonLink = { link = "LazyUrl" },
    MasonMuted = { fg = colors.grey },
    MasonMutedBlock = { link = "LazyButton" },
    MasonMutedBlockBold = {
      bg = colors.grey,
      fg = colors.black,
      bold = true,
    },
    MasonError = { fg = colors.red },
    MasonHeading = { link = "LazyH2" },
  }
end

return M
