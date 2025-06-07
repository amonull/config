-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "lua",
      "vim",
      "vimdoc",
      "arduino",
      "bash",
      "fish",
      "c",
      "cpp",
      "cmake",
      "comment",
      "css",
      "diff",
      "git_config",
      "gitcommit",
      "gitignore",
      "go",
      "gomod",
      "haskell",
      "html",
      "ini",
      "java",
      "javascript",
      "json",
      "kotlin",
      "make",
      "markdown",
      "markdown_inline",
      "perl",
      "python",
      "regex",
      "rust",
      "sql",
      "toml",
      "tsx",
      "typescript",
      "yaml",
    })
  end,
}
