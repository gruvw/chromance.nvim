---@class Helper
local M = {}

---@param hex HexColor
---@return RGB
local function hex_to_rgb(hex)
  if hex == nil then
    return { r = 0, g = 0, b = 0 }
  end

  hex = string.lower(hex)

  return {
    r = tonumber(hex:sub(2, 3), 16),
    g = tonumber(hex:sub(4, 5), 16),
    b = tonumber(hex:sub(6, 7), 16),
  }
end

---@param rgb RGB
---@return HexColor
local function rgb_to_hex(rgb)
  local red = string.format("%02x", rgb.r)
  local green = string.format("%02x", rgb.g)
  local blue = string.format("%02x", rgb.b)
  return "#" .. red .. green .. blue
end

---@param alpha HexColorAlpha
---@param background HexColor
local function rgba(red, green, blue, alpha, background)
  local bg_rgb = hex_to_rgb(background)

  -- new color
  red = (1 - alpha) * bg_rgb.r + alpha * red
  green = (1 - alpha) * bg_rgb.g + alpha * green
  blue = (1 - alpha) * bg_rgb.b + alpha * blue

  return rgb_to_hex({ r = red, g = green, b = blue })
end

---@param hex HexColor | "NONE"
---@param alpha HexColorAlpha
---@param base HexColor
function M.blend(hex, alpha, base)
  -- stylua: ignore
  if hex == "NONE" then return "NONE" end

  local rgb = hex_to_rgb(hex)
  return rgba(rgb.r, rgb.g, rgb.b, alpha, base)
end

-- Find the closest color to hex in the palette
---@param hex HexColor
---@param palette [HexColor]
function M.find_closest_color(hex, palette)
  local hrgb = hex_to_rgb(hex)
  local min_dist = math.huge
  local closest = palette[1]

  for _, color in ipairs(palette) do
    local prgb = hex_to_rgb(color)
    local dr = hrgb.r - prgb.r
    local dg = hrgb.g - prgb.g
    local db = hrgb.b - prgb.b
    local dist = dr * dr + dg * dg + db * db
    if dist < min_dist then
      min_dist = dist
      closest = color
    end
  end

  return closest
end

return M
