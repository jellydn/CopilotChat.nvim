local plugin = require('CopilotChat')
local calculate_sum = require('CopilotChat.init').calculate_sum

describe('CopilotChat plugin', function()
  it('should be able to load', function()
    assert.truthy(plugin)
  end)

local function test_calculate_sum()
  assert.are.equal(calculate_sum({}), 0, "Sum of empty array should be 0")
  assert.are.equal(calculate_sum({1, 2, 3}), 6, "Sum of [1, 2, 3] should be 6")
  assert.are.equal(calculate_sum({-1, -2, -3}), -6, "Sum of [-1, -2, -3] should be -6")
  assert.are.equal(calculate_sum({1, -2, 3}), 2, "Sum of [1, -2, 3] should be 2")
end

test_calculate_sum()
end)
