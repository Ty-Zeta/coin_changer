require "minitest/autorun"
require_relative "coin_change.rb"

class TestCoinCHange < Minitest::Test

  # def test_empty
  #   assert_equal({},coin_changer())
  # end

  def test_1_cent
    assert_equal({penny: 1}, coin_changer(1))
  end
end
