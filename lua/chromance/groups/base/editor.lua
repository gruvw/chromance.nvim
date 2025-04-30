local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    ColorColumn = {
      bg = colors.editor.background_light,
    },
    Conceal = {
      bg = colors.editor.background,
      fg = colors.grey,
    },
    Cursor = {
      bg = colors.white,
      fg = colors.white,
    },
    CursorColumn = {
      bg = colors.editor.background_light,
    },
    CursorLine = {
      bg = colors.editor.background_light,
      -- diffview line is underlined, see https://github.com/neovim/neovim/issues/9800
      -- ctermfg = "white"
    },
    CursorLineNr = {
      bg = colors.editor.background,
      fg = colors.editor.text,
      -- bold = true,
    },
    Directory = {
      bg = colors.editor.background_dark,
      fg = colors.editor.text_dark,
    },
    CursorLineFold = {
      bg = colors.editor.background,
      fg = colors.white,
    },
    DiffAdd = {
      bg = colors.edition.added_background,
    },
    DiffChange = {
      bg = colors.edition.changed_background,
    },
    DiffDelete = {
      bg = colors.edition.deleted_background,
      fg = colors.edition.deleted,
    },
    DiffText = {
      bg = colors.edition.changed_word_background,
      -- fg = colors.edition.changed,
    },
    EndOfBuffer = {
      fg = colors.editor.background,
    },
    ErrorMsg = {
      bg = colors.editor.background,
      fg = colors.semantic.error,
    },
    VertSplit = {
      bg = colors.editor.background,
      fg = colors.black,
    },
    Folded = {
      bg = colors.editor.background_dark,
    },
    FoldColumn = {
      bg = colors.editor.background,
      fg = colors.editor.text,
    },
    SignColumn = {
      bg = colors.editor.background,
    },
    Substitute = colors.groups.match_primary,
    LineNr = {
      bg = colors.editor.background,
      fg = colors.editor.text_dark,
    },
    MatchParen = colors.groups.match_secondary,
    ModeMsg = {
      link = "Normal",
    },
    MsgArea = {
      link = "ModeMsg",
    },
    MsgSeparator = {
      link = "ModeMsg",
    },
    MoreMsg = {
      fg = colors.editor.title_text,
    },
    NonText = {
      fg = colors.editor.text_dark,
    },
    Normal = colors.groups.normal,
    NormalNC = colors.groups.normal,
    NormalFloat = colors.groups.normal,
    FloatBorder = colors.groups.border,
    FloatTitle = {
      bg = colors.editor.title_text,
      fg = colors.editor.background,
    },
    Pmenu = {
      bg = colors.editor.background,
      fg = colors.editor.foreground,
    },
    PmenuSel = {
      bg = colors.editor.background_light,
      bold = true,
    },
    PmenuSbar = {
      bg = colors.editor.background,
    },
    PmenuThumb = {
      bg = colors.editor.background_light,
    },
    Search = {
      bg = colors.editor.background_light,
      fg = nil,
    },
    IncSearch = colors.groups.match_primary,
    StatusLine = {
      bg = colors.editor.background_dark,
      fg = colors.editor.text,
      reverse = false,
    },
    StatusLineNC = {
      bg = colors.editor.background_dark,
      fg = colors.editor.text_dark,
    },
    StatusLineSeparator = {
      fg = colors.editor.text_dark,
    },
    StatusLineTerm = {
      fg = colors.editor.text_dark,
    },
    StatusLineTermNC = {
      fg = colors.editor.text_dark,
    },
    Tabline = {
      link = "BufferLineBackground",
    },
    TablineFill = {
      link = "BufferLineFill",
    },
    TablineSel = {
      link = "BufferLineBufferSelected",
    },
    Title = {
      fg = colors.editor.title_text,
      bold = true,
    },
    Visual = {
      bg = colors.editor.background_light,
    },
    VisualNOS = {
      link = "Visual",
    },
    WarningMsg = {
      fg = colors.semantic.warning,
    },
    WinSeparator = {
      fg = colors.editor.border,
    },
    Whitespace = {
      fg = colors.grey,
    },

    -- Diff (maybe not needed anymore)
    diffAdded = {
      fg = colors.edition.added,
    },
    diffChanged = {
      fg = colors.edition.changed,
    },
    diffRemoved = {
      fg = colors.edition.deleted,
    },
    diffFile = {
      fg = colors.semantic.active,
    },
    diffNewFile = {
      fg = colors.semantic.active,
    },
    diffLine = {
      fg = colors.editor.text_dark,
    },

    -- Spelling
    SpellBad = {
      -- fg = colors.semantic.info,
      sp = colors.semantic.info,
      undercurl = true,
    },
    SpellCap = {
      link = "SpellBad",
    },
    SpellLocal = {
      link = "SpellBad",
    },
    SpellRare = {
      link = "SpellBad",
    },

    -- Neovim
    healthError = {
      fg = colors.semantic.error,
    },
    healthSuccess = {
      fg = colors.semantic.success,
    },
    healthWarning = {
      fg = colors.semantic.warning,
    },
  }
end

return M
