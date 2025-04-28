---@alias HexColor string A hex color in the format "#RRGGBB" or "#RRGGBBAA"
---@alias HexColorAlpha integer A number between 0 and 1

---@class RGB
---@field r number A number between 0 and 255
---@field g number A number between 0 and 255
---@field b number A number between 0 and 255

---@class HighlightValue
---@field fg? HexColor foreground: color name or "#RRGGBB", see note.
---@field bg? HexColor background: color name or "#RRGGBB", see note.
---@field sp? HexColor special: color name or "#RRGGBB"
---@field blend? integer between 0 and 100
---@field bold? boolean
---@field standout? boolean
---@field underline? boolean
---@field undercurl? boolean
---@field underdouble? boolean
---@field underdotted? boolean
---@field underdashed? boolean
---@field strikethrough? boolean
---@field italic? boolean
---@field reverse? boolean
---@field nocombine? boolean
---@field link? string name of another highlight group to link to

---@alias HighlightGroup string

---@class HighlightGroups: { [HighlightGroup]: HighlightValue }
