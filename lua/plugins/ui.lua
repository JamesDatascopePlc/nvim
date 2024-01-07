return {
  "loctvl842/monokai-pro.nvim",
  lazy = false,
  priority = 1000,
  keys = { { "<leader>um", "<cmd>MonokaiProSelect<cr>", desc = "Select Moonokai pro filter" } },
  config = function()
    local monokai = require("monokai-pro")
    monokai.setup({
      transparent_background = true,
      devicons = true,
      filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
      day_night = {
        enable = false,
        day_filter = "classic",
        night_filter = "octagon",
      },
      inc_search = "background", -- underline | background
      background_clear = {},
      plugins = {
        bufferline = {
          underline_selected = true,
          underline_visible = false,
          bold = false,
        },
        indent_blankline = {
          context_highlight = "pro", -- default | pro
          context_start_underline = true,
        },
      },
    })
    monokai.load()
  end,
}
