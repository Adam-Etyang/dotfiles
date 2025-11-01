	-- which key plugin : shows keymaps	
return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      local wk = require("which-key")
      wk.setup({
	plugins = {
	  spelling = { enabled = true },
	},
	window = {
	  border = "rounded",
	  position = "bottom",
	},
	layout = {
	  spacing = 4,
	},
      })

      -- Optional: register leader mappings for hints
	wk.register({
	f = { name = "File" },
	g = { name = "Git" },
	l = { name = "LSP" },
	s = { name = "Search" },
	t = { name = "Terminal" },
	}, { prefix = "<leader>" })
      end
}
