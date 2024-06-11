return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      -- make hidden files visible
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
        },
      },
    },
  },
}
