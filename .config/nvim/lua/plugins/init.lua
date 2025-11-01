return {

	{ "Shatur/neovim-ayu", name = "ayu" }, --ayu theme

	-- which key plugin : shows keymaps	
	  {
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
	    end,
	  },

	{
	    'nvim-lualine/lualine.nvim',
	    dependencies = { 'nvim-tree/nvim-web-devicons' },
	},

	{ "nvim-tree/nvim-web-devicons", lazy = true }, 
	
	{
	    "nvim-neo-tree/neo-tree.nvim",
	    branch = "v3.x",
	    dependencies = {
	      "nvim-lua/plenary.nvim",
	      "MunifTanjim/nui.nvim",
	      "nvim-tree/nvim-web-devicons", -- optional, but recommended
	    },
	    lazy = false, -- neo-tree will lazily load itself
	  },
-- Snacks.nvim
{
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    explorer = {
      -- your explorer configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    picker = {
      sources = {
        explorer = {
          -- your explorer picker configuration comes here
          -- or leave it empty to use the default settings
        }
      }
    }
  }
}

}
