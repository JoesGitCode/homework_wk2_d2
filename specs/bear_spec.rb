require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")

class BearTest < MiniTest::Test

  def setup
    @bear1 = Bear.new("ice bear", "polar")
  end

  def test_a_bear_should_have_a_name
    assert_equal("ice bear", @bear1.name)
  end

  def test_a_bear_has_a_type
    assert_equal("polar", @bear1.type)
  end


end
