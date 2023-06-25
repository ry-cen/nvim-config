---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dus"] = {
      function()
        local widgets = require "dap.ui.widgets"
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end,
      "Open debugging sidebar",
    },
    ["<leader>dur"] = {
      "<cmd> DapToggleRepl <CR>",
      "Open debugging sidebar",
    },
    ["<leader>dl"] = {
      "<cmd> DapStepOver <CR>",
      "Step over",
    },
    ["<leader>dj"] = {
      "<cmd> DapStepIn <CR>",
      "Step in",
    },
    ["<leader>dk"] = {
      "<cmd> DapStepOut <CR>",
      "Step out",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Continue",
    },
    ["<leader>dt"] = {
      "<cmd> DapTerminate <CR>",
      "Terminate",
    },
  },
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require("dap-go").debug_test()
      end,
      "Debug go test",
    },
    ["<leader>dgl"] = {
      function()
        require("dap-go").debug_last()
      end,
      "Debug last go test",
    },
  },
}

-- more keybinds!

return M
