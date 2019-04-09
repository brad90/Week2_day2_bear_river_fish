require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')



class TestBear < MiniTest::Test

  def setup
    @bear1 = Bear.new("Yogi","Grizzly")
    @river1 = River.new("Amazon", ["bob","chad"])

  end
#this is correct
  def test_what_is_the_bears_name
    @bear1.name
  end
#this is correct
  def test_what_is_the_bear_type
    assert_equal("Grizzly", @bear1.type)
  end
#this is correct
  def test_does_the_bear_roar
    assert_equal("Roooarrr",@bear1.does_bear_roar)
  end
#this is correct
  def test_eating_fish_in_river
    @bear1.eating_from_the_river(@river1.fish_in_river_total)
    assert_equal(1,@bear1.food_in_belly_count)
  end

  


end
