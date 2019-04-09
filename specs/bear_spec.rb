require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class BearTest < MiniTest::Test

  def setup
    @fish1 = "withchips"
    @fish2 = "sashimi"
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
    @river1 = River.new("nile", [@fish1, @fish2])
    @bear1.sushi_buffet(@fish2)
    assert_equal(1, @bear1.amount_of_fish_in_belly)
    # assert_equal(1, @river1.amount_of_fish_in_river)
  end

  def test_a_bear_can_roar
    assert_equal("rar", @bear1.bear_noise)
  end

  def test_a_bear_can_say_amount_of_bellied_fish
    assert_equal("I have #{0} fish in my belly!", @bear1.bear_boast)
  end



end
