-- main module file
local mod = require("teacup.module")

---@class Config
local config = {
  opt = "Hello!",
}

local M = {}

---@type Config
M.config = config

-- Setup method
M.setup = function(args)
  M.config = vim.tbl_deep_extend("force", M.config, args or {})
end

-- Hello method
M.hello = function()
  return mod.great(M.config.opt)
end

return M
