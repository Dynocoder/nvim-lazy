return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "leoluz/nvim-dap-go",
  },
  config = function()
    require("dapui").setup()
    require("dap-go").setup()

    local dap = require("dap")
    local dapui = require("dapui")

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    vim.keymap.set("n", "<Leader>dt", function()
      require("dap").toggle_breakpoint()
    end)
    vim.keymap.set("n", "<Leader>dc", function()
      require("dap").continue()
    end)
  end,
}
