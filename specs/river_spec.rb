require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")

class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("withchips")
    @fish2 = Fish.new("sashimi")
    @river1 = River.new("nile")
  end

  def test_a_river_has_a_name
    assert_equal("nile", @river1.name)
  end

  def test_how_many_fish_are_in_river
    assert_equal(0, @river1.amount_of_fish_in_river)
  end

  def test_a_river_holds_many_fish
    @river1.add_fish_to_river(@fish1)
    assert_equal(1, @river1.amount_of_fish_in_river)
  end

end
