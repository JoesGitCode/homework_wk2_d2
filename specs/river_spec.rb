require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")

class RiverTest < MiniTest::Test

  def setup
    @river1 = River.new("nile")
  end

  def test_a_river_has_a_name
    assert_equal("nile", @river1.name)
  end

end
