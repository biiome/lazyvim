return {
  "echasnovski/mini.comment",
  version = false, -- use latest
  config = function()
    require("mini.comment").setup()

    -- Remap <leader>/ to toggle comment
    vim.keymap.set("n", "<leader>/", "gcc", { desc = "Toggle Comment", remap = true })
    vim.keymap.set("v", "<leader>/", "gc", { desc = "Toggle Comment", remap = true })
  end,
}
