local M = {}

--- @param c Colors The color palette
--- @param config Config
function M.get(c, config, _)
  local styles = config.styles
  -- stylua: ignore
  local spec = {
    -- Annotations & Attributes
    ["@annotation"]                       = { fg = c.cyan, italic = styles.annotation.italic },
    ["@attribute"]                        = { fg = c.green }, -- `@` in decorator. E.g. `@checked`

    -- Booleans & Constants
    ["@boolean"]                          = { fg = c.magenta },
    ["@constant"]                         = { fg = c.magenta },
    ["@constant.builtin"]                 = { fg = c.magenta },
    ["@constant.macro"]                   = { fg = c.magenta },

    -- Constructors & Fields
    ["@constructor"]                      = { fg = c.green },
    ["@field"]                            = { fg = c.red },

    -- Diff Changes
    ["@diff.delta"]                       = { fg = c.yellow },
    ["@diff.minus"]                       = { fg = c.red },
    ["@diff.plus"]                        = { fg = c.green },

    -- Functions & Methods
    ["@function"]                         = { fg = c.green },
    ["@function.builtin"]                 = { fg = c.green },
    ["@function.call"]                    = { fg = c.green },
    ["@function.macro"]                   = { fg = c.green },
    ["@function.method"]                  = { fg = c.green },
    ["@function.method.call"]             = { fg = c.green },

    -- Keywords
    ["@keyword"]                          = { fg = c.red, italic = styles.keyword.italic },
    ["@keyword.conditional"]              = { fg = c.red },
    ["@keyword.coroutine"]                = { fg = c.red },
    ["@keyword.debug"]                    = { fg = c.red },
    ["@keyword.directive"]                = { fg = c.red },
    ["@keyword.directive.define"]         = { fg = c.red },
    ["@keyword.exception"]                = { fg = c.red },
    ["@keyword.function"]                 = { fg = c.cyan, italic = true },
    ["@keyword.import"]                   = { fg = c.red },
    ["@keyword.operator"]                 = { fg = c.red },
    ["@keyword.repeat"]                   = { fg = c.red },
    ["@keyword.return"]                   = { fg = c.red },
    ["@keyword.storage"]                  = { fg = c.red },
    ["@keyword.type"]                     = { fg = c.cyan, italic = true },

    -- Numbers & Operators
    ["@number"]                           = { fg = c.magenta },
    ["@number.float"]                     = { fg = c.magenta },
    ["@operator"]                         = { fg = c.red }, -- `==`, `*`, `+`, `-`

    -- Parameters & Variables
    ["@variable"]                         = { fg = c.white },
    ["@variable.builtin"]                 = { fg = c.dimmed1, italic = true },
    ["@variable.member"]                  = { fg = c.white },
    ["@variable.parameter"]               = { fg = c.blue, italic = true },
    ["@variable.parameter.builtin"]       = { fg = c.blue, italic = true },

    -- Punctuation
    ["@punctuation.bracket"]              = { fg = c.red },
    ["@punctuation.delimiter"]            = { fg = c.dimmed2 },
    ["@punctuation.special"]              = { fg = c.dimmed2 },

    -- Strings & Characters
    ["@string"]                           = { fg = c.yellow },
    ["@string.documentation"]             = { fg = c.dimmed3 },
    ["@string.escape"]                    = { fg = c.magenta },
    ["@string.regexp"]                    = { fg = c.yellow },
    ["@character"]                        = { fg = c.yellow },
    ["@character.printf"]                 = { fg = c.yellow },
    ["@character.special"]                = { fg = c.yellow },

    -- Tags & Markup
    ["@tag"]                              = { fg = c.red },
    ["@tag.attribute"]                    = { fg = c.cyan, italic = true },
    ["@tag.builtin"]                      = { fg = c.red },
    ["@tag.delimiter"]                    = { fg = c.dimmed2 },

    -- Markup Highlight Groups
    ["@markup"]                           = { fg = c.white },
    ["@markup.emphasis"]                  = { fg = c.white, italic = true },
    ["@markup.environment"]               = { fg = c.white },
    ["@markup.environment.name"]          = { fg = c.white },
    ["@markup.heading"]                   = { fg = c.green, bold = true },
    ["@markup.italic"]                    = { fg = c.white, italic = true },
    ["@markup.link"]                      = { fg = c.blue, underline = true },
    ["@markup.link.label"]                = { fg = c.blue, underline = true },
    ["@markup.link.label.symbol"]         = { fg = c.blue, underline = true },
    ["@markup.link.url"]                  = { fg = c.blue, underline = true },
    ["@markup.list"]                      = { fg = c.white },
    ["@markup.list.checked"]              = { fg = c.white },
    ["@markup.list.markdown"]             = { fg = c.white },
    ["@markup.list.unchecked"]            = { fg = c.white },
    ["@markup.math"]                      = { fg = c.yellow },
    ["@markup.raw"]                       = { fg = c.yellow },
    ["@markup.raw.markdown_inline"]       = { fg = c.yellow },
    ["@markup.strikethrough"]             = { fg = c.white, strikethrough = true },
    ["@markup.strong"]                    = { fg = c.white, bold = true },
    ["@markup.underline"]                 = { fg = c.white, underline = true },

    -- Types
    ["@type"]                             = { fg = c.cyan },
    ["@type.builtin"]                     = { fg = c.cyan, italic = true },
    ["@type.definition"]                  = { fg = c.green },
    ["@type.qualifier"]                   = { fg = c.cyan },
    ["@module"]                           = { fg = c.cyan },
    ["@module.builtin"]                   = { fg = c.cyan },
    ["@namespace.builtin"]                = { fg = c.cyan },

    -- Labels
    ["@label"]                            = { fg = c.cyan },

    -- C++
    ["@constant.cpp"]                      = { fg = c.cyan },
    ["@constant.macro.cpp"]                = { fg = c.red },
    ["@keyword.cpp"]                       = { fg = c.cyan, italic = styles.keyword.italic },
    ["@namespace.cpp"]                     = { fg = c.green },
    ["@operator.cpp"]                      = { fg = c.red },
    ["@punctuation.delimiter.cpp"]         = { fg = c.sideBar.foreground },
    ["@type.cpp"]                          = { fg = c.blue, italic = styles.type.italic },
    ["@variable.cpp"]                      = { fg = c.white },

    -- Dockerfile
    ["@function.call.bash"]                = { fg = c.green },
    ["@keyword.dockerfile"]                = { fg = c.red },
    ["@lsp.type.class.dockerfile"]         = { fg = c.cyan },
    ["@parameter.bash"]                    = { fg = c.white },

    -- Golang
    ["@keyword.function.go"]               = { fg = c.red },
    ["@module.go"]                         = { fg = c.white },
    ["@string.escape.go"]                  = { fg = c.magenta },

    -- Latex
    ["@function.macro.latex"]              = { fg = c.green },
    ["@punctuation.special.latex"]         = { fg = c.red },
    ["@string.latex"]                      = { fg = c.cyan },
    ["@text.emphasis.latex"]               = { italic = true },
    ["@text.environment.latex"]            = { fg = c.green },
    ["@text.environment.name.latex"]       = { fg = c.blue, italic = true },
    ["@text.math.latex"]                   = { fg = c.magenta },
    ["@text.strong.latex"]                 = { bold = true },

    -- Markdown
    ["@conceal.markdown"]                  = { bg = c.black },
    ["@markup.italic.markdown_inline"]     = { italic = true },
    ["@markup.link.label.markdown_inline"] = { fg = c.red },
    ["@markup.link.url.markdown_inline"]   = { fg = c.green, underline = true },
    ["@markup.raw.block.markdown"]         = { bg = c.black },
    ["@markup.raw.delimiter.markdown"]     = { bg = c.black, fg = c.dimmed2 },
    ["@markup.strong.markdown_inline"]     = { bold = true },
    ["@none.markdown"]                     = { bg = c.black },
    ["@punctuation.special.markdown"]      = { fg = c.dimmed2 },
    ["@text.emphasis.markdown_inline"]     = { fg = c.white, italic = true },
    ["@text.literal.block.markdown"]       = { bg = c.editor.background },
    ["@text.literal.markdown_inline"]      = { bg = c.dimmed4, fg = c.white },
    ["@text.quote.markdown"]               = { bg = c.dimmed5, fg = c.white },
    ["@text.reference.markdown_inline"]    = { fg = c.red },
    ["@text.strong.markdown_inline"]       = { bold = true },
    ["@text.uri.markdown_inline"]          = { fg = c.green, sp = c.green, underline = true },

    -- SCSS
    ["@function.scss"]                     = { fg = c.cyan },
    ["@keyword.scss"]                      = { fg = c.red },
    ["@number.scss"]                       = { fg = c.magenta },
    ["@property.scss"]                     = { fg = c.green },
    ["@string.scss"]                       = { fg = c.blue, italic = true },
    ["@type.scss"]                         = { fg = c.cyan },

    -- Lua
    ["@comment.documentation.lua"]        = { fg = c.cyan },
    ["@conditional.lua"]                  = { fg = c.red },
    ["@field.lua"]                        = { fg = c.white },
    ["@function.builtin.lua"]             = { fg = c.green },
    ["@keyword.function.lua"]             = { fg = c.red },
    ["@keyword.lua"]                      = { fg = c.red, italic = styles.keyword.italic },
    ["@namespace.lua"]                    = { fg = c.red },
    ["@parameter.lua"]                    = { fg = c.blue, italic = true },
    ["@variable.lua"]                     = { fg = c.white },

    -- Yaml
    ["@number.yaml"]                      = { fg = c.magenta },
    ["@property.yaml"]                    = { fg = c.red },
    ["@punctuation.special.yaml"]         = { fg = c.white },
    ["@string.yaml"]                      = { fg = c.yellow },
  }
  for i = 1, 9 do
    spec["@markup.heading." .. i .. ".markdown"] = { fg = c.yellow }
    spec["@markup.heading." .. i .. ".marker.markdown"] = { fg = c.dimmed2 }
  end
  return spec
end

return M
