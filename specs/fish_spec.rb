require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("steve")
  end

  def test_a_fish_has_a_name
    assert_equal("steve", @fish1.name)
  end

end


#
# A river should have a name e.g. "Amazon"
#
# A river should hold many fish
#
# A bear should have a name e.g. "Yogi" and a type e.g. "Grizzly"
#
# A bear should have an empty belly ( maybe an array... )
#
# A bear should be able to take a fish from the river
#
# A river should lose a fish when a bear takes a fish
