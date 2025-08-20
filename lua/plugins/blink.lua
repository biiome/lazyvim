-- changing the blink.cmp default keybinds
return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    -- merge with existing opts
    opts.keymap = vim.tbl_extend("force", opts.keymap or {}, {
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
    })
    return opts
  end,
}
