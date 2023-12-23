local plugin = require('CopilotChat')

describe('CopilotChat plugin', function()
  it('should be able to load', function()
    assert.truthy(plugin)
  end)

  it('should send a notification on setup', function()
    local mock_vim = mock(vim, true)
    plugin.setup()
    assert.spy(mock_vim.notify).was_called_with(
      "Please run ':UpdateRemotePlugins' and restart Neovim to use CopilotChat.nvim",
      vim.log.levels.INFO,
      { title = 'CopilotChat.nvim' }
    )
  end)
end)
end)
