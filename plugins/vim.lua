-- This doesn't remove the left bar with warnings when in insert mode
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
 vim.lsp.diagnostic.on_publish_diagnostics, {
   update_in_insert = true, 
 }
)

-- This sets mdx files as md
vim.filetype.add({
	extension = {
		mdx = "markdown.mdx",
	},
	filename = {},
	pattern = {},
})
vim.opt.wrap = false
vim.opt.sidescroll = 5
