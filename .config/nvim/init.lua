--load core modules
require('core.options')
require('core.keymaps')
require('core.autocommands')

--load plugins
require('plugins')

-- lazy vim
require("config.lazy")

--themes
require('ayu').setup({
    mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
    terminal = true, -- Set to `false` to let terminal manage its own colors.
    overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
})
vim.cmd("colorscheme ayu")

--lualine status line
require('lualine').setup({
    options = {
        theme = "ayu_dark",
    },

})

require('neo-tree').setup({

})
