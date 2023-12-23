-- Function to calculate the sum of numbers in an array
local function calculate_sum(numbers)
  local sum = 0
  for _, num in ipairs(numbers) do
    sum = sum + num
  end
  return sum
end

M.calculate_sum = calculate_sum-- Define a module table
local M = {}

-- Set up the plugin
M.setup = function()
  vim.notify(
    "Please run ':UpdateRemotePlugins' and restart Neovim to use CopilotChat.nvim",
    vim.log.levels.INFO,
    {
      title = 'CopilotChat.nvim',
    }
  )
end

return M
