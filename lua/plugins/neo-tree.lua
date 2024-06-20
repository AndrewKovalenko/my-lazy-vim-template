return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        width = 30,
        mappings = {
          ["O"] = "system_open",
          ["Y"] = "copy_selector",
          ["h"] = "parent_or_close",
          ["l"] = "child_or_open",
          ["o"] = "open",
          ["/"] = "noop",
        },
      },
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
