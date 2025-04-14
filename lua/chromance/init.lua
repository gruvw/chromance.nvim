local config = require("chromance.config")
local util = require("chromance.util")
local theme = require("chromance.theme")
local command = require("chromance.command")

---@class Chromance
local M = {}

M.load = function()
  util.theme.load(theme.setup())
end

M.setup = function(options)
  config.setup(options)
  command.create_filter_command()
end

return M
