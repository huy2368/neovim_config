vim.cmd[[ hi HopNextKey cterm=bold ctermfg=176 gui=bold guibg=#ff00ff guifg=#ffffff ]]
vim.cmd[[ hi HopNextKey1 cterm=bold ctermfg=176 gui=bold guibg=#ff00ff guifg=#ffffff ]]
vim.cmd[[ hi HopNextKey2 cterm=bold ctermfg=176 gui=bold guibg=#ff00ff guifg=#ffffff ]]

require('hop').setup({
  case_insensitive = true,
  char2_fallback_key = '<CR>',
  quit_key='<Esc>',
})

vim.keymap.set('n', '<leader>f', function()
  return require('hop').hint_char2({hint_offset = 0})
end,
{ silent = true, noremap = true, desc = "nvim-hop char2" })
vim.keymap.set('n', 'F', function()
  return require('hop').hint_char2({direction = require('hop.hint').HintDirection.BEFORE_CURSOR, hint_offset = 0})
end,
{ silent = true, noremap = true, desc = "nvim-hop char2" })
