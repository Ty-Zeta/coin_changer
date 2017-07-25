require "minitest/autorun"
require_relative "coin_change_v2.rb"

class TestCoinChangeV2 < Minitest::Test

  def test_empty
    assert_equal({quarter: 0, dime: 0, nickel: 0, penny: 0}, coin_changer(0))
  end

  def test_1_cent
    assert_equal({quarter: 0, dime: 0, nickel: 0, penny: 1}, coin_changer(1))
  end

  def test_4_cents
    assert_equal({quarter: 0, dime: 0, nickel: 0, penny: 4}, coin_changer(4))
  end

  def test_5_cents
    assert_equal({quarter: 0, dime: 0, nickel: 1, penny: 0}, coin_changer(5))
  end

  def test_6_cents
    assert_equal({quarter: 0, dime: 0, nickel: 1, penny: 1}, coin_changer(6))
  end

  def test_9_cents
    assert_equal({quarter: 0, dime: 0, nickel: 1, penny: 4}, coin_changer(9))
  end

  def test_10_cents
    assert_equal({quarter: 0, dime: 1, nickel: 0, penny: 0}, coin_changer(10))
  end

  def test_15_cents
    assert_equal({quarter: 0, dime: 1, nickel: 1, penny: 0}, coin_changer(15))
  end

  def test_19_cents
    assert_equal({quarter: 0, dime: 1, nickel: 1, penny: 4}, coin_changer(19))
  end

  def test_43_cents
    assert_equal({quarter: 1, dime: 1, nickel: 1, penny: 3}, coin_changer(43))
  end

  def test_78_cents
    assert_equal({quarter: 3, dime: 0, nickel: 0, penny: 3}, coin_changer(78))
  end

  # def test_fail_purpose
  # assert_equal({quarter: 0, dime: 0, nickel: 1, penny: 0}, coin_changer(43))
  # end
end
