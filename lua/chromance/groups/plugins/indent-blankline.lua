local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    IndentBlanklineChar = {
      fg = colors.grey,
    },
    IndentBlanklineContextChar = {
      fg = colors.editor.background_light,
    },
    IndentBlanklineContextStart = {
      sp = colors.editor.background_light,
    },
    IndentBlanklineSpaceChar = {
      fg = colors.grey,
    },

    IndentBlankLineIndent1 = {
      fg = colors.rainbow.rainbow1_dark,
    },
    IndentBlankLineIndent2 = {
      fg = colors.rainbow.rainbow2_dark,
    },
    IndentBlankLineIndent3 = {
      fg = colors.rainbow.rainbow3_dark,
    },
    IndentBlankLineIndent4 = {
      fg = colors.rainbow.rainbow4_dark,
    },
    IndentBlankLineIndent5 = {
      fg = colors.rainbow.rainbow5_dark,
    },
    IndentBlankLineIndent6 = {
      fg = colors.rainbow.rainbow6_dark,
    },
  }
end

return M
