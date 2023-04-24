local opts = { noremap = true, silent = true }

-- shorten function name
local keymap = vim.api.nvim_set_keymap

-- remap space as the leader key
keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Modes
--   normal_mode = 'n'
--   insert_mode = 'i'
--   visual_mode = 'v'
--   visual_block_mode = 'x'
--   term_mode = 't'
--   command_mode = 'c'

-- Normal --
-- better window navigation
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- resize with arrows
keymap('n', '<C-Up>', ':resize -2<CR>', opts)
keymap('n', '<C-Down>', ':resize +2<CR>', opts)
keymap('n', '<C-Left>', ':vertical resize -2<CR>', opts)
keymap('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- quick toggle file explorer
keymap('n', '<Leader>e', ':Lex 30<CR>', opts)

-- clear search buffer by pressing space twice
keymap('n', '<Leader><Space>', ":let @/=''<CR>", opts)

-- toggle relative line numbers
keymap('n', '<F6>', ':set invrelativenumber<CR>', opts)

-- navigate buffers
keymap('n', '<S-l>', ':bnext<CR>', opts)
keymap('n', '<S-h>', ':bprevious<CR>', opts)

-- move lines up and down
keymap('n', '<A-j>', '<Esc>:m .+1<CR>', opts)
keymap('n', '<A-k>', '<Esc>:m .-2<CR>', opts)

-- Insert --
-- press jk quickly to leave insert mode
keymap('i', 'jk', '<Esc>', opts)
keymap('i', 'kj', '<Esc>', opts)

-- Visual --
-- stay in visual mode after indent
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- move lines up and down
keymap('x', '<A-j>', ":move '>+1<CR>gv-gv", opts)
keymap('x', '<A-k>', ":move '<-2<CR>gv-gv", opts)

-- Fuzzy finder
keymap('n', '<leader>f', "<cmd>Telescope find_files<cr>", opts)
keymap('n', '<c-t>', '<cmd>Telescope live_grep<cr>', opts)

-- Tests
keymap('n', '<Leader>p', "<CMD>lua require('neotest').summary.open()<CR><CMD>lua require('neotest').run.run_last()<CR>", opts)
keymap('n', '<Leader>a', "<CMD>lua require('neotest').summary.open()<CR><CMD>lua require('neotest').run.run(vim.fn.expand('%'))<CR>", opts)
keymap('n', '<Leader>n', "<CMD>lua require('neotest').summary.open()<CR><CMD>lua require('neotest').run.run()<CR>", opts)
keymap('n', '<Leader>t', "<CMD>lua require('neotest').summary.toggle()<CR>", opts)
