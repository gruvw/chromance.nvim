local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  local spec = {
    -- Annotations & Attributes
    ["@annotation"]                        = { fg = colors.blue, italic = options.italic_enabled, },
    ["@attribute"]                         = { fg = colors.green },

    -- Booleans & Constants
    ["@boolean"]                           = { fg = colors.purple },
    ["@constant"]                          = { link = "Constant" },
    ["@constant.builtin"]                  = { fg = colors.red },
    ["@constant.macro"]                    = { fg = colors.red },

    -- Constructors & Fields
    ["@constructor"]                       = { fg = colors.green },
    ["@field"]                             = { fg = colors.red },

    -- Diff Changes
    ["@diff.delta"]                        = { fg = colors.yellow },
    ["@diff.minus"]                        = { fg = colors.red },
    ["@diff.plus"]                         = { fg = colors.green },

    -- Functions & Methods
    ["@function"]                          = { fg = colors.green },
    ["@function.builtin"]                  = { fg = colors.green },
    ["@function.call"]                     = { fg = colors.green },
    ["@function.macro"]                    = { fg = colors.green },
    ["@function.method"]                   = { fg = colors.green },
    ["@function.method.call"]              = { fg = colors.green },

    -- Keywords
    ["@keyword"]                           = { fg = colors.red, },
    ["@keyword.conditional"]               = { fg = colors.red },
    ["@keyword.coroutine"]                 = { fg = colors.red },
    ["@keyword.debug"]                     = { fg = colors.red },
    ["@keyword.directive"]                 = { fg = colors.red },
    ["@keyword.directive.define"]          = { fg = colors.red },
    ["@keyword.exception"]                 = { fg = colors.red },
    ["@keyword.function"]                  = { fg = colors.blue, italic = options.italic_enabled },
    ["@keyword.import"]                    = { fg = colors.red },
    ["@keyword.operator"]                  = { fg = colors.red },
    ["@keyword.repeat"]                    = { fg = colors.red },
    ["@keyword.return"]                    = { fg = colors.red },
    ["@keyword.storage"]                   = { fg = colors.red },
    ["@keyword.type"]                      = { fg = colors.blue },
    ["@keyword.python"]                    = { link = "@keyword", },

    -- Numbers & Operators
    ["@number"]                            = { link = "Number" },
    ["@number.float"]                      = { fg = colors.red },
    ["@operator"]                          = { fg = colors.red }, -- `==`, `*`, `+`, `-`

    -- Parameters & Variables
    ["@variable"]                          = { fg = colors.white },
    ["@variable.builtin"]                  = { fg = colors.white, italic = options.italic_enabled, },
    ["@variable.member"]                   = { fg = colors.white },
    ["@variable.parameter"]                = { fg = colors.blue, italic = options.italic_enabled, },
    ["@variable.parameter.builtin"]        = { fg = colors.blue, italic = options.italic_enabled },
    ["@parameter"]                         = { fg = colors.orange, },
    ["@property"]                          = { fg = colors.white, },

    -- Punctuation
    ["@punctuation.bracket"]               = { fg = colors.red },
    ["@punctuation.delimiter"]             = { fg = colors.white },
    ["@punctuation.special"]               = { fg = colors.grey },

    -- Strings & Characters
    ["@string"]                            = { fg = colors.yellow },
    ["@string.documentation"]              = { fg = colors.grey },
    ["@string.escape"]                     = { fg = colors.red },
    ["@string.regexp"]                     = { fg = colors.yellow },
    ["@character"]                         = { fg = colors.yellow },
    ["@character.printf"]                  = { fg = colors.yellow },
    ["@character.special"]                 = { fg = colors.yellow },

    -- Tags & Markup
    ["@tag"]                               = { fg = colors.red },
    ["@tag.attribute"]                     = { fg = colors.blue, italic = options.italic_enabled, },
    ["@tag.builtin"]                       = { fg = colors.red },
    ["@tag.delimiter"]                     = { fg = colors.white },

    -- Markup Highlight Groups
    ["@markup"]                            = { fg = colors.white },
    ["@markup.emphasis"]                   = { fg = colors.white, italic = options.italic_enabled, },
    ["@markup.environment"]                = { fg = colors.white },
    ["@markup.environment.name"]           = { fg = colors.white },
    ["@markup.heading"]                    = { fg = colors.yellow, bold = true },
    ["@markup.italic"]                     = { fg = colors.white, italic = options.italic_enabled, },
    ["@markup.link"]                       = { fg = colors.blue, underline = true },
    ["@markup.link.label"]                 = { fg = colors.blue, underline = true },
    ["@markup.link.label.symbol"]          = { fg = colors.blue, underline = true },
    ["@markup.link.url"]                   = { fg = colors.blue, underline = true },
    ["@markup.list"]                       = { fg = colors.grey },
    ["@markup.list.checked"]               = { fg = colors.white },
    ["@markup.list.unchecked"]             = { fg = colors.white },
    ["@markup.math"]                       = { fg = colors.yellow },
    ["@markup.raw"]                        = { fg = colors.yellow },
    ["@markup.raw.markdown_inline"]        = { fg = colors.orange, italic = options.italic_enabled, },
    ["@markup.strikethrough"]              = { fg = colors.white, strikethrough = true },
    ["@markup.strong"]                     = { fg = colors.white, bold = true },
    ["@markup.underline"]                  = { fg = colors.white, underline = true },

    -- Types
    ["@type"]                              = { fg = colors.blue },
    ["@type.builtin"]                      = { fg = colors.blue, italic = options.italic_enabled },
    ["@type.definition"]                   = { fg = colors.green },
    ["@type.qualifier"]                    = { fg = colors.blue },
    ["@module"]                            = { fg = colors.blue },
    ["@module.builtin"]                    = { fg = colors.blue },
    ["@namespace.builtin"]                 = { fg = colors.blue },
    ["@type.python"]                       = { fg = colors.blue, },

    -- Labels
    ["@label"]                             = { fg = colors.blue },

    -- C++
    ["@constant.cpp"]                      = { fg = colors.blue },
    ["@constant.macro.cpp"]                = { fg = colors.red },
    ["@keyword.cpp"]                       = { fg = colors.blue, italic = options.italic_enabled, },
    ["@namespace.cpp"]                     = { fg = colors.green },
    ["@operator.cpp"]                      = { fg = colors.red },
    ["@punctuation.delimiter.cpp"]         = { fg = colors.white },
    ["@type.cpp"]                          = { fg = colors.blue, italic = options.italic_enabled, },
    ["@variable.cpp"]                      = { fg = colors.white },

    -- Dockerfile
    ["@function.call.bash"]                = { fg = colors.green },
    ["@keyword.dockerfile"]                = { fg = colors.red },
    ["@lsp.type.class.dockerfile"]         = { fg = colors.blue },
    ["@parameter.bash"]                    = { fg = colors.white },

    -- Golang
    ["@keyword.function.go"]               = { fg = colors.red },
    ["@module.go"]                         = { fg = colors.white },
    ["@string.escape.go"]                  = { fg = colors.red },

    -- Latex
    ["@function.macro.latex"]              = { fg = colors.green },
    ["@punctuation.special.latex"]         = { fg = colors.red },
    ["@string.latex"]                      = { fg = colors.blue },
    ["@text.emphasis.latex"]               = { italic = options.italic_enabled },
    ["@text.environment.latex"]            = { fg = colors.green },
    ["@text.environment.name.latex"]       = { fg = colors.blue, italic = options.italic_enabled },
    ["@text.math.latex"]                   = { fg = colors.red },
    ["@text.strong.latex"]                 = { bold = true },

    -- Markdown
    ["@markup.italic.markdown_inline"]     = { italic = options.italic_enabled },
    ["@markup.link.label.markdown_inline"] = { fg = colors.red },
    ["@markup.link.url.markdown_inline"]   = { fg = colors.green, underline = true },
    ["@markup.raw.delimiter.markdown"]     = { bg = colors.black, fg = colors.grey },
    ["@markup.strong.markdown_inline"]     = { bold = true },
    ["@punctuation.special.markdown"]      = { fg = colors.grey },
    ["@text.emphasis.markdown_inline"]     = { fg = colors.white, italic = options.italic_enabled },
    ["@text.literal.block.markdown"]       = { bg = colors.editor.background },
    ["@text.literal.markdown_inline"]      = { fg = colors.orange, italic = options.italic_enabled, },
    ["@text.quote.markdown"]               = { bg = colors.dark, fg = colors.white },
    ["@text.reference.markdown_inline"]    = { fg = colors.red },
    ["@text.strong.markdown_inline"]       = { bold = true },
    ["@text.uri.markdown_inline"]          = { fg = colors.green, sp = colors.green, underline = true },

    -- SCSS
    ["@function.scss"]                     = { fg = colors.blue },
    ["@keyword.scss"]                      = { fg = colors.red },
    ["@number.scss"]                       = { link = "Number" },
    ["@property.scss"]                     = { link = "@property" },
    ["@string.scss"]                       = { fg = colors.blue, italic = options.italic_enabled },
    ["@type.scss"]                         = { fg = colors.blue },

    -- Lua
    ["@comment.documentation.lua"]         = { fg = colors.blue },
    ["@conditional.lua"]                   = { fg = colors.red },
    ["@field.lua"]                         = { fg = colors.white },
    ["@function.builtin.lua"]              = { fg = colors.green },
    ["@keyword.function.lua"]              = { fg = colors.red },
    ["@keyword.lua"]                       = { fg = colors.red, italic = options.italic_enabled, },
    ["@namespace.lua"]                     = { fg = colors.red },
    ["@parameter.lua"]                     = { fg = colors.blue, italic = options.italic_enabled },
    ["@variable.lua"]                      = { fg = colors.white },

    -- Yaml
    ["@number.yaml"]                       = { link = "Number" },
    ["@property.yaml"]                     = { fg = colors.red },
    ["@punctuation.special.yaml"]          = { fg = colors.white },
    ["@string.yaml"]                       = { fg = colors.yellow },
  }

  for i = 1, 9 do
    spec["@markup.heading." .. i .. ".markdown"] = { fg = colors.yellow, bold = true, }
    spec["@markup.heading." .. i .. ".marker.markdown"] = { fg = colors.grey }
  end
  return spec
end

return M
