local status_ok, treesitter = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
  vim.notify('Treesitter not found!')
  return
end

treesitter.setup({
  ensure_installed = 'all',
  ignore_install = {},
  highlight = {
    enable = true,
    disable = {}
  },
  indent = {
    enable = true,
    disable = {}
  }
})
