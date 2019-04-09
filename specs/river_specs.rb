require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')


class TestRiver < MiniTest::Test

  def setup
    @river = River.new("Thames", ["Bob","Jim"])
  end

  def test_what_is_the_river_name
    @river.name
  end

  def test_number_of_fish
    assert_equal(2,@river.number_of_fish_count)
  end

  def test_adding_fish_to_the_river
    new_fish_to_river = Fish.new("nemo")
    @river.add_fish_to_river(new_fish_to_river.name)
    assert_equal(3,@river.number_of_fish_count)
  end

  # def test_no_fish_added_to_the_river
  #   new_fish_to_river = Fish.new("")
  #   @river.add_fish_to_river(new_fish_to_river.name)
  #   assert_equal(0,@river.number_of_fish_count)
  # end

  def test_fish_in_the_river
    assert_equal( ["Bob","Jim"], @river.fish_in_river_total)
  end

  def test_adding_fish_to_river
    assert_equal(["Bob","Jim","Fish", "Fish", "Fish"], @river.fish_in_river_total)
  end

end
