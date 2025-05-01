local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    ["@lsp.type.boolean"]                      = { link = "@boolean" },
    ["@lsp.type.builtinType"]                  = { link = "@type.builtin" },
    ["@lsp.type.class"]                        = { fg = colors.blue, },
    ["@lsp.type.comment"]                      = { link = "@comment" },
    ["@lsp.type.decorator"]                    = { link = "@attribute" },
    ["@lsp.type.deriveHelper"]                 = { link = "@attribute" },
    ["@lsp.type.enum"]                         = { link = "@type" },
    ["@lsp.type.enumMember"]                   = { link = "@constant" },
    ["@lsp.type.escapeSequence"]               = { link = "@string.escape" },
    ["@lsp.type.formatSpecifier"]              = { link = "@markup.list" },
    ["@lsp.type.generic"]                      = { link = "@variable" },
    ["@lsp.type.interface"]                    = { fg = colors.blue },
    ["@lsp.type.keyword"]                      = { link = "@keyword" },
    ["@lsp.type.lifetime"]                     = { link = "@keyword.storage" },
    ["@lsp.type.namespace"]                    = { link = "@module" },
    ["@lsp.type.namespace.python"]             = { link = "@variable" },
    ["@lsp.type.number"]                       = { link = "@number" },
    ["@lsp.type.operator"]                     = { link = "@operator" },
    ["@lsp.type.parameter"]                    = { link = "@parameter" },
    ["@lsp.type.property"]                     = { link = "@property" },
    ["@lsp.type.selfKeyword"]                  = { link = "@variable.builtin" },
    ["@lsp.type.selfTypeKeyword"]              = { link = "@variable.builtin" },
    ["@lsp.type.string"]                       = { link = "@string" },
    ["@lsp.type.type"]                         = {},
    ["@lsp.type.typeAlias"]                    = { link = "@type.definition" },
    ["@lsp.type.unresolvedReference"]          = { undercurl = true, sp = colors.red },
    ["@lsp.type.variable"]                     = {},
    ["@lsp.type.annotation"]                   = { fg = colors.blue, italic = options.italic_enabled, },

    ["@lsp.type.class.dart"]                   = { fg = colors.blue, italic = false, },
    ["@lsp.type.class.markdown"]               = { fg = colors.red, italic = false, },
    ["@lsp.type.pol.typst"]                    = { link = "@parameter" },
    ["@lsp.type.string.typst"]                 = { link = "String" },
    ["@lsp.type.operator.typst"]               = { link = "Operator" },
    ["@lsp.type.punct.typst"]                  = { link = "@punctuation.bracket" },
    ["@lsp.type.heading.typst"]                = { link = "@text.title.1.markdown" },
    ["@lsp.type.marker.typst"]                 = { link = "@punctuation.special.markdown" },
    ["@lsp.type.keyword.typst"]                = { link = "@keyword" },

    ["@lsp.typemod.property.annotation"]       = { fg = colors.blue, italic = options.italic_enabled, },
    ["@lsp.typemod.class.defaultLibrary"]      = { fg = colors.blue, },
    ["@lsp.typemod.enum.defaultLibrary"]       = { link = "@type.builtin" },
    ["@lsp.typemod.enumMember.defaultLibrary"] = { link = "@constant.builtin" },
    ["@lsp.typemod.function.defaultLibrary"]   = { link = "@function.builtin" },
    ["@lsp.typemod.keyword.async"]             = { link = "@keyword.coroutine" },
    ["@lsp.typemod.keyword.injected"]          = { link = "@keyword" },
    ["@lsp.typemod.macro.defaultLibrary"]      = { link = "@function.builtin" },
    ["@lsp.typemod.method.defaultLibrary"]     = { link = "@function.builtin" },
    ["@lsp.typemod.operator.injected"]         = { link = "@operator" },
    ["@lsp.typemod.string.injected"]           = { link = "@string" },
    ["@lsp.typemod.struct.defaultLibrary"]     = { link = "@type.builtin" },
    ["@lsp.typemod.type.defaultLibrary"]       = { fg = colors.blue },
    ["@lsp.typemod.typeAlias.defaultLibrary"]  = { fg = colors.blue },
    ["@lsp.typemod.variable.callable"]         = { link = "@function" },
    ["@lsp.typemod.variable.defaultLibrary"]   = { link = "@variable.builtin" },
    ["@lsp.typemod.variable.injected"]         = { link = "@variable" },
    ["@lsp.typemod.variable.static"]           = { link = "@constant" },
    ["@lsp.typemod.parameter.declaration"]     = { link = "@parameter", },
    ["@lsp.typemod.variable.readonly"]         = { fg = colors.white, },

    ["@lsp.mod.interpolation"]                 = { fg = colors.orange, },

    ["@lsp.mod.strong.typst"]                  = { link = "@text.strong.markdown_inline" },
  }
end

return M
