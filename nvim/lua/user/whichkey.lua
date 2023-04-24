local status_ok, whichkey = pcall(require, 'which-key')
if not status_ok then
  vim.notify('whichkey not found')
  return
end

whichkey.setup({
  hide_statusline = true
})

whichkey.register({
  a = 'All Tests',
  e = 'File Explorer',
  f = 'Find Files',
  n = 'Nearest Test',
  p = 'Most Recent Test',
  t = 'Test Panel',
  ['<Leader>'] = 'Clear Search',

  l = {
    name = 'LSP',
    a = 'Code Action',
    f = 'Format',
    i = 'Info',
    k = 'Previous Diagnostic',
    j = 'Next Diagnostic',
    q = 'Quickfix',
    r = 'Rename',
  },
}, {prefix="<Leader>"})
