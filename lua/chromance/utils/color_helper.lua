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

-- Convert RGB to HSV
local function rgb_to_hsv(r, g, b)
  r, g, b = r / 255, g / 255, b / 255
  local max_val = math.max(r, g, b)
  local min_val = math.min(r, g, b)
  local delta = max_val - min_val

  local h = 0
  if delta ~= 0 then
    if max_val == r then
      h = ((g - b) / delta) % 6
    elseif max_val == g then
      h = ((b - r) / delta) + 2
    else
      h = ((r - g) / delta) + 4
    end
    h = h * 60
  end
  if h < 0 then h = h + 360 end

  return {
    h = h,
    s = max_val,
    v = (max_val == 0 and 0 or delta / max_val),
  }
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

-- Find the closest color based on hue distance
---@param hex HexColor
---@param palette [HexColor]
function M.find_closest_color(hex, palette)
  local hrgb = hex_to_rgb(hex)
  local hhue = rgb_to_hsv(hrgb.r, hrgb.g, hrgb.b)

  local min_dist = math.huge
  local closest = palette[1]

  for _, color in ipairs(palette) do
    local prgb = hex_to_rgb(color)
    local phue = rgb_to_hsv(prgb.r, prgb.g, prgb.b)

    local hue_diff = math.abs(hhue.h - phue.h)
    hue_diff = math.min(hue_diff, 360 - hue_diff) -- shortest circular distance

    if hue_diff < min_dist then
      min_dist = hue_diff
      closest = color
    end
  end

  return closest
end

return M
