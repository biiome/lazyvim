-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Make nvm's node available to Mason / LSPs
local node_path = vim.fn.expand("$HOME/.nvm/versions/node")
-- Find the "default" alias or just grab the active one
local default_node = vim.fn.system("ls -t " .. node_path .. " | head -1"):gsub("\n", "")
if default_node ~= "" then
  vim.env.PATH = node_path .. "/" .. default_node .. "/bin:" .. vim.env.PATH
end
