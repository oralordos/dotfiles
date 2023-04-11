local status_ok, neotest = pcall(require, 'neotest')
if not status_ok then
  vim.notify('Cannot load neotest')
  return
end

neotest.setup({
  adapters = {
    require('neotest-elixir'),
    require('neotest-go')
  },
  quickfix = {
    open = false
  }
})
