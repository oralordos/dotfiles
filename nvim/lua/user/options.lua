-- Look in `:help options` for documentation for each option
local options = {
  -- signcolumn = 'yes',                      -- always show gutter for LSP signs
  -- termguicolors = true,                    -- allow full 24-bit color support
  backup = false,                          -- do not keep the backup file after save is complete
  clipboard = 'unnamedplus',               -- use system clipboard by default
  cmdheight = 2,                           -- more space for the command area for displaying messages without needing a full screen dialog
  completeopt = { 'menuone', 'noselect' }, -- always show menu for completion without auto-selecting anything
  cursorline = true,                       -- add an underline to the row the cursor is currently
  expandtab = true,                        -- convert tabs to spaces
  fixendofline = true,                     -- ensure trailing newline at end of file
  guifont = 'Go Mono:h12',                 -- set font in non-terminal instances of neovim
  hlsearch = true,                         -- highlight 
  ignorecase = true,                       -- ignore case when searching
  linebreak = true,                        -- when splitting lines, attempt to break line between words
  mouse = 'a',                             -- allow mouse in all vim modes
  number = true,                           -- show line numbers
  numberwidth = 4,                         -- numberwidth - 2 is the minimum size for line number gutter
  pumheight = 10,                          -- maximum number of items in popup menu
  relativenumber = true,                   -- use relative line numbers
  scrolloff = 8,                           -- number of lines above and below cursor to keep on-screen
  shiftwidth = 2,                          -- decrease tab size
  showmode = false,                        -- don't show mode like INSERT
  showtabline = 1,                         -- show window tabs, 0: never, 1: only when multiple tabs available, 2: always
  sidescrolloff = 8,                       -- number of characters left and right of the cursor to keep on-screen
  smartcase = true,                        -- do not ignore case when search contains a capital letter
  smarttab = true,                         -- attempt to tab on newlines
  splitbelow = true,                       -- open new horizontal splits below current panel
  splitright = true,                       -- open new vertical splits to the right of current panel
  swapfile = false,                        -- do not use a file for the open buffer, keeps open information confidential
  tabstop = 2,                             -- decrease tab size
  timeoutlen = 300,                        -- set timeout for keymaps that take multiple keys in sequence
  undofile = true,                         -- keep undo history when closing and restarting neovim
  wrap = true,                             -- split lines to show entire long line
  writebackup = true,                      -- write a backup for a file before saving
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.formatoptions:remove({ 'c', 'r', 'o' })       -- do not automatically add comments when creating new lines
vim.opt.iskeyword:append '-'                          -- count hyphenated words as single words
vim.opt.runtimepath:remove('/usr/share/vim/vimfiles') -- do not use basic vim files or plugins
