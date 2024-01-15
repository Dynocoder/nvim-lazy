-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- telescope action keymaps (keymaps for when the telescope ui is on)
local actions = require("telescope.actions")
require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        -- jj will transfer into the normal mode
        ["kk"] = { "<esc>", type = "command" },
      },
    },
  },
})

-- -- This function is run when vim is exited, this will delete all the terminal in the buffers if any present.
-- local function kill_all_term_buffers()
--   vim.notify("Killing all terminal buffers...")
--   -- Get a list of all buffers
--   local buflist =
--     vim.fn.filter(vim.fn.range(1, vim.fn.bufnr("$")), "vim.fn.bufexists(v:val) and vim.fn.buflisted(v:val)")
--   -- Iterate over the list of buffers
--   for _, buf in ipairs(buflist) do
--     -- Check if the buffer is a terminal
--     if vim.bo[buf].buftype == "terminal" then
--       -- Kill the job associated with the terminal
--       vim.api.nvim_buf_call(buf, function()
--         vim.cmd("term_kill")
--       end)
--     end
--   end
-- end
--
-- vim.api.nvim_exec(
--   [[
--  augroup QuitTermBuffers
--   autocmd!
--   autocmd VimLeave * lua kill_all_term_buffers()
--  augroup END
-- ]],
--   false
-- )
