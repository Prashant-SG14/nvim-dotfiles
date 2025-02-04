return {
  "CRAG666/betterTerm.nvim",
  config = function()
    local betterTerm = require("betterTerm")

    betterTerm.setup({
      opts = {

        position = "bot",
        size = 25,
      },
    })

    -- Define keymaps
    vim.keymap.set({"n", "t"}, "<leader>vo", betterTerm.open, { desc = "Open terminal"})
    vim.keymap.set({"n"}, "<leader>vs", betterTerm.select, { desc = "Select terminal" })

    -- local current = 2
    -- vim.keymap.set(
    --   {"n"}, "<leader>tn",
    --   function()
    --     betterTerm.open(current)
    --     current = current + 1
    --   end,
    --   { desc = "New terminal" }
    -- )
  end,
}

