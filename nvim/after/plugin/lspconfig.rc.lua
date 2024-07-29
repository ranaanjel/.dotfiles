local status, nvim_lsp = pcall(require, "lspconfig")

if(not status) then return end

local protocol = require('vim.lsp.protocol')
local on_attach = function(client, bufnr)
	--formatting
	if client.server_capabilities.documentFormattingProvider then
		vim.api.nvim_command [[augroup Format]]
		vim.api.nvim_command [[autocmd! * <bffer>]]
--		vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
		vim.api.nvim_command [[augroup END]] 
	end
end

-- configuring as per language required
nvim_lsp.tsserver.setup {
	on_attach = on_attach,
	filetypes = { "typescript", "typescriptreact", "typescript.tsx" , "javascript", "html"},
	cmd = { "typescript-language-server", "--stdio" }
}

nvim_lsp.lua_ls.setup {
	on_attach = on_attach, 
	settings = {
		Lua = {
			diagnostics = {
				-- get the language server to recognize the 'vim' global 
				globals = {'vim'}
			
			},
			workspace = {
			-- make the server aware of neovim runtime files
			liibray = vim.api.nvim_get_runtime_file("", true),
			checkThirdPaty = false
			}
		}
	}
}

nvim_lsp.eslint.setup({
	 on_attach = function(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end,
	filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx", "vue", "svelte", "astro" },
	cmd = { "vscode-eslint-language-server", "--stdio" }

})

--       local capabilities = vim.lsp.protocol.make_client_capabilities()
--       capabilities.textDocument.completion.completionItem.snippetSupport = true
--
--       nvim_lsp.html.setup{
--               capabilities = capabilities,
--               on_attach = on_attach,
--               cmd = { "vscode-html-language-server", "--stdio" },
--               filetypes = {"html", "htm", "templ"}
--       }
