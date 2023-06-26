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
    ["<leader>dbb"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Toggle breakpoint at line",
    },
    ["<leader>dbc"] = {
      function()
        require("dap").set_breakpoint(vim.fn.input "Condition: ", nil, nil)
      end,
      "Add conditional breakpoint at line",
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
