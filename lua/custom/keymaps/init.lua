-- d to blackhole
vim.keymap.set({ 'n', 'v' }, 'd', '"_d', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v' }, 'dd', '"_dd', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v' }, '<C-a>', 'ggVG', { noremap = true, silent = true })

-- default control keymaps
vim.keymap.set({ 'n' }, '<C-q>', ':q!<CR>', { noremap = true, silent = true, desc ="Quit without saving" })
vim.keymap.set({ 'n' }, '<C-s>', ':w<CR>', { noremap = true, silent = true, desc ="Save" })
vim.keymap.set( { 'n' }, '<C-e>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- remove s keymap
vim.keymap.set( { 'n' }, 's', '<Nop>', { noremap = true, silent = true })

-- command mode keymaps for navigation
vim.keymap.set({'c'}, '<F13>', "<Tab>", { noremap = true, silent = true })
vim.keymap.set({'c'}, '<Down>', function()
    return require'cmp'.visible() and "<C-n>" or "<Down>"
end, { expr = true, noremap = true })
vim.keymap.set({'c'}, '<Up>', function()
    return require'cmp'.visible() and "<C-p>" or "<Up>"
end, { expr = true, noremap = true })

-- get error history
vim.keymap.set({'n'}, '<leader>e', ':Noice<CR>', { noremap = true, silent = true, desc = 'View [E]rror Messages' })