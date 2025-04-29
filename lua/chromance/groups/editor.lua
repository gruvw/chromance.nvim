local M = {}

--- @param colors Colors
--- @param options Options
function M.setup(colors, options)
  return {
    ColorColumn = {
      bg = colors.editor.background_light,
    }, -- used for the columns set with 'colorcolumn'
    Conceal = { bg = colors.editor.background, fg = colors.grey }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = {
      bg = colors.white,
      fg = colors.white,
    }, -- character under the cursor
    -- lCursor      = {}, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     = {bg = theme.palette.red}, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn = {
      bg = colors.editor.background,
    }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine = {
      bg = colors.editor.background_light,
    }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground
    CursorLineNr = {
      bg = colors.editor.background,
      fg = colors.editor.text,
      bold = true,
    }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- CursorLineNrNC = { bg = C.bg, fg = C.lightGray }, -- CursorLineNr for inactive windows
    Directory = {
      bg = colors.editorGroupHeader.tabsBackground,
      fg = colors.statusBar.foreground,
    }, -- directory names (and other special names in listings)
    CursorLineFold = {
      bg = colors.editor.background,
      fg = colors.white,
    },
    DiffAdd = {
      bg = colors.diffEditor.insertedLineBackground,
      fg = colors.diffEditorOverview.insertedForeground,
    }, -- diff mode: Added line |diff.txt|
    DiffChange = {
      bg = colors.diffEditor.modifiedLineBackground,
      fg = colors.diffEditorOverview.modifiedForeground,
    }, -- diff mode: Changed line |diff.txt|
    DiffDelete = {
      bg = colors.diffEditor.removedLineBackground,
      fg = colors.diffEditorOverview.removedForeground,
    },
    DiffText = { bg = colors.editor.background, fg = colors.editor.text }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer = {
      fg = colors.editor.background,
    }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    ErrorMsg = {
      bg = colors.editor.background,
      fg = colors.inputValidation.errorForeground,
    }, -- error messages on the command line
    VertSplit = {
      bg = colors.editor.background,
      fg = colors.black,
    }, -- the column separating vertically split windows
    Folded = {
      bg = colors.editor.background_dark,
    }, -- line used for closed folds
    FoldColumn = {
      bg = colors.editor.background,
      fg = colors.editor.text,
    }, -- 'foldcolumn'
    SignColumn = {
      bg = colors.editor.background,
    }, -- column where |signs| are displayed
    -- Substitute = { bg = C.yellow, fg = C.bg }, -- |:substitute| replacement text highlighting
    LineNr = {
      bg = colors.editor.background,
      fg = colors.editor.text_dark,
    }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    MatchParen = colors.groups.match_secondary, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg = {
      link = "Normal",
    }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea = {
      link = "ModeMsg",
    }, -- Area for messages and cmdline
    MsgSeparator = {
      link = "ModeMsg",
    }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg = {
      fg = colors.yellow,
    }, -- |more-prompt| ufo
    NonText = {
      fg = colors.grey,
    }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|. Example the character space between words
    Normal = {
      bg = colors.editor.background,
      fg = colors.editor.text,
    }, -- normal text
    NormalNC = {
      bg = colors.editor.background,
      fg = colors.editor.text,
    },
    NormalFloat = colors.groups.normal, -- Normal text in floating windows. example PackerNormal
    FloatBorder = colors.groups.border,
    FloatTitle = {
      bg = colors.yellow,
      fg = colors.black,
    },
    Pmenu = {
      bg = colors.editor.background,
      fg = colors.editor.foreground,
    }, -- Popup menu: normal item.
    PmenuSel = {
      bg = colors.editor.background_light,
      bold = true,
    },
    PmenuSbar = {
      bg = colors.editor.background,
    }, -- Popup menu: scrollbar.
    PmenuThumb = {
      bg = colors.editor.background_light,
    },
    -- Question = { bg = C.bg, fg = C.gray }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine = { bg = C.bg }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- QuickFixLineNC = { bg = C.bg }, -- QuickFixLine, for inactive windows
    Search = {
      bg = colors.editor.background_light,
      fg = nil, -- should set to NONE to use treesitter color
    }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    -- SpecialKey   = {}, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace| SpellBad  Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.  SpellCap  Word that should start with a capital. |spell| Combined with the highlighting used otherwise.  SpellLocal  Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    = {}, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    IncSearch = colors.groups.match_primary, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    StatusLine = {
      bg = colors.statusBar.background,
      fg = colors.statusBar.activeForeground,
      reverse = false,
    }, -- status line of current window
    StatusLineNC = {
      bg = colors.statusBar.background,
      fg = colors.statusBar.foreground,
    }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    StatusLineSeparator = { fg = colors.statusBar.background },
    StatusLineTerm = { fg = colors.statusBar.background },
    StatusLineTermNC = { fg = colors.statusBar.background },
    Tabline = { link = "BufferLineBackground" }, -- tab pages line, not active tab page label
    TablineFill = { link = "BufferLineFill" }, -- tab pages line, where there are no labels
    TablineSel = { link = "BufferLineBufferSelected" }, -- tab pages line, active tab page label
    Title = {
      fg = colors.yellow,
      bold = true,
    }, -- titles for output from ":set all", ":autocmd"
    Visual = {
      bg = colors.editor.background_light,
    }, -- Visual mode selection
    VisualNOS = {
      link = "Visual",
    }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg = {
      fg = colors.inputValidation.warningForeground,
    }, -- warning messages
    WinSeparator = {
      -- bg = c.editor.background,
      fg = colors.editor.border,
    }, -- the column separating windows
    Whitespace = {
      fg = colors.grey,
    }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- WildMenu = { bg = C.cyan, fg = C.black }, -- current match in 'wildmenu' completion

    -- Git
    diffAdded = { fg = colors.green },
    diffChanged = { fg = colors.yellow },
    diffRemoved = { fg = colors.red },
    diffFile = { fg = colors.yellow },
    diffNewFile = { fg = colors.yellow },
    diffLine = { fg = colors.blue },
    -- Spelling
    SpellBad = { sp = colors.blue, undercurl = true, },
    SpellCap = { link = "SpellBad", },
    SpellLocal = { link = "SpellBad", },
    SpellRare = { link = "SpellBad", },
    -- Neovim
    healthError = { fg = colors.red },
    healthSuccess = { fg = colors.green },
    healthWarning = { fg = colors.blue },
  }
end

return M
