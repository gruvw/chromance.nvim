local ch = require("chromance.utils.color_helper")

local M = {}

---@param colors Colors
function M.apply_icons(colors)
  local status_ok, nvim_web_devicons = pcall(require, "nvim-web-devicons")
  if not status_ok then
    return
  end

  -- set icon color from closest color in palette
  local icons = nvim_web_devicons.get_icons()
  for _, icon in pairs(icons) do
    icon.color = ch.find_closest_color(icon.color, colors.icons_colors)
  end
end

return M
