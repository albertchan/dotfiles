return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
        "c",
        "cpp",
        "css",
        "gitignore",
        "go",
        "html",
        "java",
        "javascript",
        "lua",
        "python",
        "rust",
        "scss",
        "sql",
        "svelte",
        "typescript",
        "vim",
        "vimdoc"
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}