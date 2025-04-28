local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    -- Neovim 0.6+
    DiagnosticError = { fg = colors.inputValidation.errorForeground },
    DiagnosticWarn = { fg = colors.inputValidation.warningForeground },
    DiagnosticInfo = { fg = colors.inputValidation.infoForeground },
    DiagnosticHint = { fg = colors.inputValidation.infoForeground },
    DiagnosticSignError = { fg = colors.inputValidation.errorForeground },
    DiagnosticSignWarn = { fg = colors.inputValidation.warningForeground },
    DiagnosticSignInfo = { fg = colors.inputValidation.infoForeground },
    DiagnosticSignHint = { fg = colors.inputValidation.infoForeground },
    DiagnosticVirtualTextError = {
      bg = colors.errorLens.errorBackground,
      fg = colors.errorLens.errorForeground,
    },
    DiagnosticVirtualTextWarn = {
      bg = colors.errorLens.warningBackground,
      fg = colors.errorLens.warningForeground,
    },
    DiagnosticVirtualTextInfo = {
      bg = colors.errorLens.infoBackground,
      fg = colors.errorLens.infoForeground,
    },
    DiagnosticVirtualTextHint = {
      bg = colors.errorLens.hintBackground,
      fg = colors.errorLens.hintForeground,
    },
    DiagnosticUnderlineError = {
      sp = colors.inputValidation.errorBorder,
      undercurl = true,
    },
    DiagnosticUnderlineWarn = {
      sp = colors.inputValidation.warningBorder,
      undercurl = true,
    },
    DiagnosticUnderlineInfo = {
      sp = colors.inputValidation.infoBorder,
      undercurl = true,
    },
    DiagnosticUnderlineHint = {
      sp = colors.inputValidation.infoBorder,
      undercurl = true,
    },
    DiagnosticUnnecessary = {
      sp = colors.inputValidation.infoBorder,
      undercurl = true,
    },
    LspInlayHint = {
      bg = colors.editorInlayHint.background,
      fg = colors.editorInlayHint.foreground,
    },
    LspReferenceRead = { bg = colors.editor.background_highlight },
    LspReferenceText = { bg = colors.editor.background_highlight },
    LspReferenceWrite = { bg = colors.editor.background_highlight },
    LspInfoBorder = { fg = colors.editor.border, },
  }
end

return M
