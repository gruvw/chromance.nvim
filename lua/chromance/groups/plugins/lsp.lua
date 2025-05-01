local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    -- Neovim 0.6+
    DiagnosticError = {
      fg = colors.semantic.error,
    },
    DiagnosticWarn = {
      fg = colors.semantic.warning,
    },
    DiagnosticInfo = {
      fg = colors.semantic.info,
    },
    DiagnosticHint = {
      fg = colors.semantic.info,
    },

    DiagnosticSignError = {
      fg = colors.semantic.error,
    },
    DiagnosticSignWarn = {
      fg = colors.semantic.warning,
    },
    DiagnosticSignInfo = {
      fg = colors.semantic.info,
    },
    DiagnosticSignHint = {
      fg = colors.semantic.info,
    },

    DiagnosticVirtualTextError = {
      bg = colors.semantic.error_background,
      fg = colors.semantic.error,
    },
    DiagnosticVirtualTextWarn = {
      bg = colors.semantic.warning_background,
      fg = colors.semantic.warning,
    },
    DiagnosticVirtualTextInfo = {
      bg = colors.semantic.info_background,
      fg = colors.semantic.info,
    },
    DiagnosticVirtualTextHint = {
      bg = colors.semantic.info_background,
      fg = colors.semantic.info,
    },
    DiagnosticUnderlineError = {
      sp = colors.semantic.error,
      undercurl = true,
    },
    DiagnosticUnderlineWarn = {
      sp = colors.semantic.warning,
      undercurl = true,
    },
    DiagnosticUnderlineInfo = {
      sp = colors.semantic.info,
      undercurl = true,
    },
    DiagnosticUnderlineHint = {
      sp = colors.semantic.info,
      undercurl = true,
    },
    DiagnosticUnnecessary = {
      sp = colors.semantic.info,
      undercurl = true,
    },
    LspInlayHint = {
      bg = colors.editor.background_dark,
      fg = colors.editor.text_dark,
    },
    LspReferenceRead = {
      bg = colors.editor.background_light,
    },
    LspReferenceText = {
      bg = colors.editor.background_light,
    },
    LspReferenceWrite = {
      bg = colors.editor.background_light,
    },
    LspInfoBorder = {
      fg = colors.editor.border,
    },
  }
end

return M
