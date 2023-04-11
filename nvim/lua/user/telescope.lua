local status_ok, telescope = pcall(require, 'telescope')
if not status_ok then
  vim.notify('Unable to load telescope')
  return
end

telescope.setup({
  defaults = {
    prompt_prefix = ' ',
    -- selection_caret = ' ',
    path_display = { 'smart' }
  },
  pickers = {
    find_files = {
      theme = 'dropdown',
      previewer = false
    }
  }
})
