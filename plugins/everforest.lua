-- Check if termguicolors is supported
if vim.fn.has('termguicolors') == 1 then
  vim.opt.termguicolors = true
end

-- Set the everforest_background and everforest_better_performance variables
vim.g.everforest_background = 'hard' -- hard | medium | soft
vim.g.everforest_better_performance = 1
