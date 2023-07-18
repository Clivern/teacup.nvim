
-- Teacup custom command
vim.api.nvim_create_user_command("Teacup", function()
  vim.notify(require("teacup").hello())
end, {})
