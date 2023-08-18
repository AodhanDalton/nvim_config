local lsp = require('lsp-zero').preset({})
local lspconfig = require('lspconfig')
local configs = require('lspconfig.configs')

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- When you don't have mason.nvim installed
-- You'll need to list the servers installed in your system
lsp.setup_servers({'tsserver', 'pylsp', 'clangd', 'rust_analyzer', 'gopls'})


local cmp = require("cmp")
local cmp_mappings = lsp.defaults.cmp_mappings ({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-Space>'] = cmp.mapping.confirm({ select = true }),
	['<C-y>'] = cmp.mapping.complete(),
})


vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
vim.api.nvim_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true })

lsp.set_preferences({
  sign_icons = { }
})
lsp.setup()

