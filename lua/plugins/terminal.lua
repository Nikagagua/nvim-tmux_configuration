return {
  {
    "s1n7ax/nvim-terminal",
    config = function()
      vim.o.hidden = true
      local Terminal = require("nvim-terminal.terminal")
      local Window = require("nvim-terminal.window")

      local window = Window:new({
        position = "botright",
        split = "sp",
        width = 50,
        height = 15,
      })

      local terminal = Terminal:new(window)

      _G.terminal = terminal

      vim.api.nvim_set_keymap("n", "<leader>t", ":lua terminal:toggle()<cr>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("n", "<leader>1", ":lua terminal:open(1)<cr>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("n", "<leader>2", ":lua terminal:open(2)<cr>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("n", "<leader>3", ":lua terminal:open(3)<cr>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("n", "<leader>4", ":lua terminal:open(4)<cr>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("n", "<leader>5", ":lua terminal:open(5)<cr>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap(
        "n",
        "<leader>+",
        ":lua terminal:change_height(2)<cr>",
        { noremap = true, silent = true }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader>-",
        ":lua terminal:change_height(-2)<cr>",
        { noremap = true, silent = true }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader><leader>+",
        ":lua terminal:change_width(2)<cr>",
        { noremap = true, silent = true }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader><leader>-",
        ":lua terminal:change_width(-2)<cr>",
        { noremap = true, silent = true }
      )
    end,
  },
}

