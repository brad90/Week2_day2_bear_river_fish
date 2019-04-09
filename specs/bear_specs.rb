require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')



class TestBear < MiniTest::Test

  def setup
    @bear1 = Bear.new("Yogi","Grizzly",)
    @bear2 = Bear.new("TopCat","Cat",)
    @bear3 = Bear.new("Yogi","Grizzly",["fish","fish","fish"])
    @river1 = River.new("Amazon", ["bob","chad"])

  end
#this is correct
  def test_what_is_the_bears_name
   p @bear1.name
   assert_equal("Yogi", @bear1.name)
  end

#this is correct
  def test_what_is_the_bear_type
    assert_equal("Grizzly", @bear1.type)
  end


#this is correct
  def test_does_the_bear_roar__does
    assert_equal("Roooarrr",@bear1.does_bear_roar)
  end

  def test_does_the_bear_roar__not
    assert_equal("I dont roar...sad!", @bear2.does_bear_roar)
  end

  def test_is_bear_hungry__less_2_fish
    assert_equal(true,@bear1.is_bear_hungry)
  end

  def test_is_bear_hungry__more_than_2_fish
    assert_equal(false,@bear3.is_bear_hungry)
  end
#this is correct
  def test_eating_fish_from_river
    @bear1.eating_fish_from_the_river(@river1.fish_in_river_total)
    assert_equal(1,@bear1.food_in_belly_count)
  end




end
