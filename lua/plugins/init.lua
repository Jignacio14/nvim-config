return {
  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "pyright",
        "gopls",
        "typescript-language-server",
        "html-lsp",
        "css-lsp",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "python", "go", "ruby",
        "html", "css",
        "typescript", "javascript", "tsx",
      },
      highlight = { enable = true },
    },
  },

  {
    "Snikimonkd/telescope-git-conflicts.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      require("telescope").load_extension("conflicts")
    end,
  },

  {
    'akinsho/git-conflict.nvim',
    version = "*",
    event = "BufReadPost",
    config = function()
      require('git-conflict').setup {
        default_mappings = true,
        default_commands = true,
        disable_diagnostics = false,
        list_opener = 'copen',
        highlights = {
          incoming = 'DiffAdd',
          current = 'DiffText',
        },
      }
    end,
  }
}
