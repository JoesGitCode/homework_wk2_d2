require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class BearTest < MiniTest::Test

  def setup
    @river1 = River.new("nile", [@fish1, @fish2])
    @bear1 = Bear.new("ice bear", "polar")
  end

  def test_a_bear_should_have_a_name
    assert_equal("ice bear", @bear1.name)
  end

  def test_a_bear_has_a_type
    assert_equal("polar", @bear1.type)
  end

  def test_a_bear_has_an_empty_belly
    assert_equal(0, @bear1.amount_of_fish_in_belly)
  end

  def test_a_bear_can_take_a_fish_from_river
    @bear1.sushi_buffet(@fish1)
    assert_equal(1, @bear1.amount_of_fish_in_belly)
  end

end
