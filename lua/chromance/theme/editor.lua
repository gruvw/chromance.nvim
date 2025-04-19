local M = {}

--- @param c Colors The color palette
--- @param config Config
--- @param hp Helper
function M.setup(c, config, hp)
  return {
    ColorColumn = {
      bg = c.dark
    }, -- used for the columns set with 'colorcolumn'
    Conceal = { bg = c.editor.background, fg = c.silver }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = {
      bg = c.white,
      fg = c.white,
    }, -- character under the cursor
    -- lCursor      = {}, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     = {bg = theme.palette.red}, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn = {
      bg = c.editor.background,
    }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine = {
      bg = c.editor.lineHighlightBackground,
    }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground
    CursorLineNr = {
      bg = c.editor.background,
      fg = c.editorLineNumber.activeForeground,
      bold = true,
    }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- CursorLineNrNC = { bg = C.bg, fg = C.lightGray }, -- CursorLineNr for inactive windows
    Directory = {
      bg = c.editorGroupHeader.tabsBackground,
      fg = c.statusBar.foreground,
    }, -- directory names (and other special names in listings)
    CursorLineFold = {
      bg = c.editor.background,
      fg = c.white,
    },
    DiffAdd = {
      bg = c.diffEditor.insertedLineBackground,
      fg = c.diffEditorOverview.insertedForeground,
    }, -- diff mode: Added line |diff.txt|
    DiffChange = {
      bg = c.diffEditor.modifiedLineBackground,
      fg = c.diffEditorOverview.modifiedForeground,
    }, -- diff mode: Changed line |diff.txt|
    DiffDelete = {
      bg = c.diffEditor.removedLineBackground,
      fg = c.diffEditorOverview.removedForeground,
    },
    DiffText = { bg = c.editor.background, fg = c.editor.text }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer = {
      fg = c.editor.background,
    }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    ErrorMsg = {
      bg = c.editor.background,
      fg = c.inputValidation.errorForeground,
    }, -- error messages on the command line
    VertSplit = {
      bg = c.editor.background,
      fg = c.black,
    }, -- the column separating vertically split windows
    Folded = {
      bg = c.editor.foldBackground,
    }, -- line used for closed folds
    FoldColumn = {
      bg = c.editor.background,
      fg = c.editorLineNumber.activeForeground,
    }, -- 'foldcolumn'
    SignColumn = {
      bg = c.editor.background,
    }, -- column where |signs| are displayed
    -- Substitute = { bg = C.yellow, fg = C.bg }, -- |:substitute| replacement text highlighting
    LineNr = {
      bg = c.editor.background,
      fg = c.editorLineNumber.foreground,
    }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    MatchParen = {
      fg = c.yellow,
      bold = true,
      underline = true,
    }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
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
      fg = c.yellow,
    }, -- |more-prompt| ufo
    NonText = {
      fg = c.editor.background,
    }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|. Example the character space between words
    Normal = {
      bg = c.editor.background,
      fg = c.editor.text,
    }, -- normal text
    NormalNC = {
      bg = c.editor.background,
      fg = c.editor.text,
    },
    NormalFloat = c.styles.normal, -- Normal text in floating windows. example PackerNormal
    FloatBorder = c.styles.border,
    FloatTitle = {
      bg = c.yellow,
      fg = c.black,
    },
    Pmenu = {
      bg = c.editorSuggestWidget.background,
      fg = c.editorSuggestWidget.foreground,
    }, -- Popup menu: normal item.
    PmenuSel = {
      bg = c.editorSuggestWidget.selectedBackground,
      bold = true,
    },
    PmenuSbar = {
      bg = hp.blend(c.editorSuggestWidget.background, 0.1, c.white),
    }, -- Popup menu: scrollbar.
    PmenuThumb = {
      bg = c.scrollbarSlider.hoverBackground,
      -- bg_base = c.editorSuggestWidget.background,
    },
    -- Question = { bg = C.bg, fg = C.gray }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine = { bg = C.bg }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- QuickFixLineNC = { bg = C.bg }, -- QuickFixLine, for inactive windows
    Search = {
      bg = c.editor.findMatchHighlightBackground,
      fg = nil, -- should set to NONE to use treesitter color
    }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    -- SpecialKey   = {}, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace| SpellBad  Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.  SpellCap  Word that should start with a capital. |spell| Combined with the highlighting used otherwise.  SpellLocal  Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    = {}, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    IncSearch = config.inc_search == "underline" and {
      bg = c.editor.findMatchBackground,
      sp = c.editor.findMatchBorder,
      underline = true,
      bold = true,
    } or {
      bg = c.yellow,
      fg = c.black,
      underline = false,
      bold = true,
    }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    StatusLine = {
      bg = c.statusBar.background,
      fg = c.statusBar.activeForeground,
      reverse = false,
    }, -- status line of current window
    StatusLineNC = {
      bg = c.statusBar.background,
      fg = c.statusBar.foreground,
    }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    StatusLineSeparator = { fg = c.statusBar.background },
    StatusLineTerm = { fg = c.statusBar.background },
    StatusLineTermNC = { fg = c.statusBar.background },
    Tabline = { link = "BufferLineBackground" }, -- tab pages line, not active tab page label
    TablineFill = { link = "BufferLineFill" }, -- tab pages line, where there are no labels
    TablineSel = { link = "BufferLineBufferSelected" }, -- tab pages line, active tab page label
    Title = {
      fg = c.yellow,
      bold = true,
    }, -- titles for output from ":set all", ":autocmd"
    Visual = {
      bg = c.editor.selectionBackground,
    }, -- Visual mode selection
    VisualNOS = {
      link = "Visual",
    }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg = {
      fg = c.inputValidation.warningForeground,
    }, -- warning messages
    WinSeparator = {
      -- bg = c.editor.background,
      fg = c.editor.border,
    }, -- the column separating windows
    Whitespace = {
      fg = c.grey,
    }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- WildMenu = { bg = C.cyan, fg = C.black }, -- current match in 'wildmenu' completion

    -- Git
    diffAdded = { fg = c.green },
    diffChanged = { fg = c.yellow },
    diffRemoved = { fg = c.red },
    diffFile = { fg = c.yellow },
    diffNewFile = { fg = c.yellow },
    diffLine = { fg = c.blue },
    -- Spelling
    SpellBad = { fg = c.red, sp = c.red, undercurl = true },
    SpellCap = { fg = c.red, sp = c.red, undercurl = true },
    SpellLocal = { fg = c.red, sp = c.red, undercurl = true },
    SpellRare = { fg = c.red, sp = c.red, undercurl = true },
    -- Neovim
    healthError = { fg = c.red },
    healthSuccess = { fg = c.green },
    healthWarning = { fg = c.blue },
  }
end

return M
