require "minitest/autorun"
require_relative "coin_change.rb"

class TestCoinCHange < Minitest::Test

  def test_empty
    assert_equal({},coin_changer)
  end

end
