-- return {
--   "neovim/nvim-lspconfig",
--   opts = {
--     servers = {
--       pyright = {
--         settings = {
--           pyright = {
--             disableOrganizeImports = true, -- Using Ruff
--           },
--           python = {
--             analysis = {
--               ignore = { "*" }, -- Using Ruff
--               typeCheckingMode = "off", -- Using mypy
--             },
--           },
--         },
--       },
--       ruff_lsp = {
--         keys = {
--           {
--             "<leader>co",
--             function()
--               vim.lsp.buf.code_action({
--                 apply = true,
--                 context = {
--                   only = { "source.organizeImports" },
--                   diagnostics = {},
--                 },
--               })
--             end,
--             desc = "Organize Imports",
--           },
--         },
--       },
--       clangd = {
--         cmd = {
--           "clangd",
--           "--background-index",
--           "--clang-tidy",
--           "--header-insertion=iwyu",
--           "--completion-style=detailed",
--           "--function-arg-placeholders",
--           "-std=c89",
--           "--fallback-style=llvm",
--         },
--       },
--     },
--     setup = {
--       ruff = function()
--         require("lazyvim.util").lsp.on_attach(function(client, _)
--           if client.name == "ruff" then
--             -- Disable hover in favor of Pyright
--             client.server_capabilities.hoverProvider = false
--           end
--         end)
--       end,
--     },
--   },
-- }
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = {
        settings = {
          pyright = { disableOrganizeImports = true },
          python = {
            analysis = {
              ignore = { "*" },
              typeCheckingMode = "off",
            },
          },
        },
      },
      ruff = {
        keys = {
          {
            "<leader>co",
            LazyVim.lsp.action["source.organizeImports"],
            desc = "Organize Imports",
          },
        },
        -- Logic moved here:
        on_attach = function(client)
          -- Disable hover in favor of Pyright
          client.server_capabilities.hoverProvider = false
        end,
      },
      clangd = {
        cmd = {
          "clangd",
          "--background-index",
          "--clang-tidy",
          "--header-insertion=iwyu",
          "--completion-style=detailed",
          "--function-arg-placeholders",
          "-std=c89",
          "--fallback-style=llvm",
        },
      },
    },
  },
}
