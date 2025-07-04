return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    plugins = {
      marks = false,
      registers = false,
      spelling = {
        enabled = true,
        suggestions = 20,
      },
      presets = {
        operators = false,    -- adds help for operators like d, y, ...
        motions = false,      -- adds help for motions
        text_objects = false, -- help for text objects triggered after entering an operator
        windows = false,      -- default bindings on <c-w>
        nav = false,          -- misc bindings to work with windows
        z = false,            -- bindings for folds, spelling and others prefixed with z
        g = false,            -- bindings for prefixed with g
      },
    },
    show_help = true,        -- show help message on the command line when the popup is visible
    show_keys = true,        -- show the currently pressed key and its label as a message in the command line
  },
}