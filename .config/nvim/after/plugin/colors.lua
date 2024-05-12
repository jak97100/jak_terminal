function colorMyPencils(color)
	-- color = color or "rose-pine-main"
	color = color or "gruvbox"
	vim.cmd.colorscheme(color)
    vim.o.background = "dark"

    -- Make active window black
	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

require("gruvbox").setup({
  terminal_colors = true, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = false, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = true,
})

require("gruber-darker").setup({
    bold = true,
    invert = {
        signs = false,
        tabline = false,
        visual = false,
    },
    italic = {
        strings = true,
        comments = true,
        operators = false,
        folds = true,
    },
    undercurl = true,
    underline = true,
})

-- colorMyPencils("gruber-darker")
colorMyPencils("gruvbox")
-- colorMyPencils()
