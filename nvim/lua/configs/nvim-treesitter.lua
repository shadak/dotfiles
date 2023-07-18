local status, ts = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

ts.setup({
	highlight = {
		enable = true,
    additional_vim_regex_highlighting = false,
  },
  context_commentstring = {
  	enable = true,
    enable_autocmd = false,
  },
  ensure_installed = {
  	"markdown",
    "toml",
    "json",
    "yaml",
    "rust",
    "lua",
  },
  rainbow = {
  	enable = true,
    disable = { "html" },
    extended_mode = false,
    max_file_lines = nil,
  },
  autotag = { enable = true },
  incremental_selection = { enable = true },
  indent = { enable = true },
})

