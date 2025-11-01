return{
  "neovim/nvim-lspconfig",
  dependencies = {
    "mason",
    { "mason-org/mason-lspconfig.nvim", config = function() end },
  },
  opts = {
    diagnostics = {
      underline = true,
      update_in_insert = false,
      virtual_text = {
        spacing = 4,
        source = "if_many",
        prefix = "●",
      },
      severity_sort = true,
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = "E",
          [vim.diagnostic.severity.WARN] = "W",
          [vim.diagnostic.severity.HINT] = "H",
          [vim.diagnostic.severity.INFO] = "I",
        },
      },
    },
    servers = {
      lua_ls = {
        settings = {
          Lua = {
            workspace = {
              checkThirdParty = false,
            },
            codeLens = {
              enable = true,
            },
          },
        },
      },
    },
  },
  config = function(_, opts)
    vim.diagnostic.config(opts.diagnostics)
    for server, server_opts in pairs(opts.servers) do
      vim.lsp.config(server, server_opts)
      vim.lsp.enable(server)
    end
  end
}
