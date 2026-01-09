return {
  -- Mason configuration
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- Formatters
        "stylua",
        "clang-format",
        "prettierd",
        "isort",
        "black",

        -- LSP Servers
        "clangd",
        "intelephense",
        "omnisharp",
        "gopls",
        "ktlint",
        "jdtls",
        "pyright",
        "lua-language-server",
        "typescript-language-server",
        "tailwindcss-language-server",
        "html-lsp",
        "css-lsp",
        "json-lsp",
        "eslint-lsp",
        "rust-analyzer",
        "svelte-language-server",
        "vue-language-server",
        "dockerfile-language-server",
        "docker-compose-language-service",
      },
    },
  },
}
