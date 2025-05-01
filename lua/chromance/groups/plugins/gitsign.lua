local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    SignAdd = {
      fg = colors.edition.added,
    },
    SignChange = {
      fg = colors.edition.changed,
    },
    SignDelete = {
      fg = colors.edition.deleted,
    },
    GitSignsAdd = {
      link = "SignAdd",
    },
    GitSignsChange = {
      link = "SignChange",
    },
    GitSignsDelete = {
      link = "SignDelete",
    },
    GitSignsCurrentLineBlame = {
      fg = colors.grey,
    },
    GitSignsAddInline = {
      link = "DiffAdd",
    },
    GitSignsChangeInline = {
      link = "DiffChange",
    },
    GitSignsDeleteInline = {
      link = "DiffDelete",
    },
  }
end

return M
