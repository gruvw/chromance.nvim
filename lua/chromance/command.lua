local util = require("chromance.util")
local config = require("chromance.config")

local M = {}

M.create_filter_command = function()
  local cmd = vim.api.nvim_create_user_command

  cmd("ChromanceSelect", function()
    local menu = util.ui.create_menu("Set Chromance filter", {
      "classic",
      "light",
      "machine",
      "octagon",
      "pro",
      "ristretto",
      "spectrum",
    }, function(item)
      local filter = item.value
      config.extend({ filter = filter })
      vim.cmd([[colorscheme chromance]])
    end)
    assert(menu, "Error: Fail to create menu")
    menu:mount()
  end, { nargs = 0 })

  cmd("Chromance", function(opts)
    local filter = opts.args
    config.extend({ filter = filter })
    vim.cmd([[colorscheme chromance]])
  end, {
    nargs = 1,
    complete = function()
      return {
        "classic",
        "light",
        "machine",
        "octagon",
        "pro",
        "ristretto",
        "spectrum",
      }
    end,
  })
end

return M
