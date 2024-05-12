require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "cpp", "objc", "bash", "lua", "vim", "vimdoc", "query" },
  -- Unable to add in "help" above

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,

    -- Disable in large C++ buffers
    -- disable = function(lang, bufnr) 
    --   return lang == "cpp" and vim.api.nvim_buf_line_count(bufnr) > 50000
    -- end,
    disable = function(_, bufnr)
        local buf_name = vim.api.nvim_buf_get_name(bufnr)
        local file_size = vim.api.nvim_call_function("getfsize", { buf_name })
        return file_size > 512 * 1024 --256KB
    end,
  },
}
