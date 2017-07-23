require "minitest/autorun"
require_relative "coin_change.rb"

class TestCoinChange < Minitest::Test

  # def test_empty
  #   assert_equal({},coin_changer())
  # end

  def test_1_cent
    assert_equal({penny: 1}, coin_changer(1))
  end

  def test_4_cents
    assert_equal({penny: 4}, coin_changer(4))
  end

  def test_5_cents
    assert_equal({nickel: 5}, coin_changer(5))
  end

end
