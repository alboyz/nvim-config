return {
	"jwalton512/vim-blade",
	config = function()
		--Define some single Blade directives. This variable is used for highlighting only.
		vim.cmd([[
        let g:blade_custom_directives = ['datetime', 'javascript']
      ]])
		-- Define pairs of Blade directives. This variable is used for highlighting and indentation.
		vim.cmd([[
        let g:blade_custom_directives_pairs = {
      \   'markdown': 'endmarkdown',
      \   'cache': 'endcache',
      \ }
      ]])
	end,
}
