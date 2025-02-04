return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "harper_ls", "lua_ls", "templ", "jdtls", "clangd", "pyright" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- Hide only hints (severity 4)
			vim.lsp.handlers["textDocument/publishDiagnostics"] = function(_, result, ctx, config)
				if not result.diagnostics then
					return
				end

				local filtered_diagnostics = {}
				for _, diagnostic in ipairs(result.diagnostics) do
					if diagnostic.severity ~= 4 then -- Remove only hints
						table.insert(filtered_diagnostics, diagnostic)
					end
				end

				result.diagnostics = filtered_diagnostics
				vim.lsp.diagnostic.on_publish_diagnostics(_, result, ctx, config)
			end

			local lspconfig = require("lspconfig")
			-- lspconfig.pyre.setup({ capabilities = capabilities })
			lspconfig.harper_ls.setup({ capabilities = capabilities })
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.jdtls.setup({ capabilities = capabilities })
			lspconfig.templ.setup({ capabilities = capabilities })
			lspconfig.clangd.setup({ capabilities = capabilities })
			lspconfig.pyright.setup({ capabilities = capabilities })
		end,
	},
}
