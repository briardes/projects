require "minitest/autorun"
require "change"

class ChangeTest < MiniTest::Unit::TestCase
  def setup
    @change = Change.new(0.51)
  end
  def test_that_change_can_be_created
    refute_nil @change, 'Change is nil!'
  end

  def test_change_stores_argument
    assert_equal 0.51, @change.money
  end

  def test_we_can_get_change
    5.times do |i|
      change_hash = Change.new(i / 100.0).make_change
      assert_equal({ :pennies => i }, change_hash[:pennies => 0])
    end
  end

  def test_that_nickels_work
    assert_equal({ :nickels => 1 }, Change.new(0.05).make_change)
  end
end
