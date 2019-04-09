require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')


class TestFish < MiniTest::Test

  def setup
    @fish = Fish.new("Dori")
  end

  def test_what_is_the_fish_name
    @fish.name
  end

end
