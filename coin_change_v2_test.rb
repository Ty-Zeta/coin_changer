require "minitest/autorun"
require_relative "coin_change_v2.rb"

class TestCoinChangeV2 < Minitest::Test

  def test_empty
    assert_equal({quarter: 0, dime: 0, nickel: 0, penny: 0}, coin_changer(0))
  end
end
