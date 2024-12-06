return {
  {
    "nvim-java/nvim-java",
    lazy = false,
    dependencies = {
      "nvim-java/lua-async-await",
      "nvim-java/nvim-java-core",
      "nvim-java/nvim-java-test",
      "nvim-java/nvim-java-dap",
      "MunifTanjim/nui.nvim",
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-dap",
      {
        "williamboman/mason.nvim",
        opts = {
          registries = {
            "github:nvim-java/mason-registry",
            "github:mason-org/mason-registry",
          },
        },
      },
    },
    config = function()
      require("java").setup {}
      require("lspconfig").jdtls.setup {
        on_attach = require("plugins.configs.lspconfig").on_attach,
        capabilities = require("plugins.configs.lspconfig").capabilities,
        filetypes = { "java" },
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "nvimtools/none-ls.nvim",
        event = "VeryLazy",
        opts = function()
          return require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },
  {
    "akinsho/bufferline.nvim",
    lazy = false,
    config = function()
      vim.keymap.set("n", "<TAB>", ":BufferLineCycleNext<cr>", { desc = "[B]ufferLine Next", silent = true })
      vim.keymap.set("n", "<S-TAB>", ":BufferLineCyclePrev<cr>", { desc = "[B]ufferLine Prev", silent = true })
      vim.keymap.set("n", "<C-d>", ":BufferLineCloseOthers<cr>", { desc = "[B]ufferLine Prev", silent = true })
      require("bufferline").setup {}
    end,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
}
