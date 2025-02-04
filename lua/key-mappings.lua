vim.g.mapleader = " "
local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("t", "<Esc>", "<C-\\><C-N>", { desc = "Exit out of Insert mode "})


-- Window management

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })     -- Split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })   -- Split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })      -- Make split windows equal
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- Close current split window

-- Tab management

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })        -- Open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- Close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })        --  Go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })    --  Go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
--  Move current buffer to new tab

-- Auto-session.lua

keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" })
-- restore last workspace session for current directory
keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" })
-- save workspace session for current working directory

keymap.set("n", "<leader>wf", "<cmd>SessionSearch<CR>", { desc = "Search through saved sessions" })

-- LSP-config.lua

keymap.set("n", "K", vim.lsp.buf.hover, {})
keymap.set("n", "gd", vim.lsp.buf.definition, {})
keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Show available code actions" })
keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})

-- Code Runner
keymap.set("n", "<leader>vr", "<cmd>RunFile float<CR>", { desc = "Runs code in a floating window" })
keymap.set("n", "<leader>vb", "<cmd>RunCode<CR>", { desc = "Runs code in a terminal window" })
