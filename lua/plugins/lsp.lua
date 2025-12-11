return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      ruff = {
        keys = {
          {
            "<leader>co",
            LazyVim.lsp.action["source.organizeImports"],
            desc = "Organize Imports",
          },
        },
        on_attach = function(client)
          -- Disable hover in favor of Pyright
          client.server_capabilities.hoverProvider = false
        end,
      },
      -- pyright = {
      --   settings = {
      --     pyright = { disableOrganizeImports = true },
      --     python = {
      --       analysis = {
      --         ignore = { "*" },
      --         typeCheckingMode = "off",
      --       },
      --     },
      --   },
      -- },
      -- clangd = {
      --   cmd = {
      --     "clangd",
      --     "--background-index",
      --     "--clang-tidy",
      --     "--header-insertion=iwyu",
      --     "--completion-style=detailed",
      --     "--function-arg-placeholders",
      --     "-std=c89",
      --     "--fallback-style=llvm",
      --   },
      -- },
    },
  },
}
