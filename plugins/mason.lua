-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      -- ensure_installed = { "lua_ls" },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      -- ensure_installed = { "prettier", "stylua" },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      -- ensure_installed = { "python" },
      automatic_setup = {
        -- modifies the default configurations table
        -- pass in a function or a list to override with
        -- the same can be done for adapters and filetypes
        configurations = function(default)
          default.php[1].port = 9003
          default.php[1].stopOnEntry = true
          default.php[1].pathMappings = {
            ["/srv/"] = "${workspaceFolder}",
          }

          return default
        end,
      }
    },
  },
}
