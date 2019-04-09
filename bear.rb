class Bear

  attr_reader :name, :type
  attr_accessor :belly

  def initialize(name, type, belly = [])
    @name = name
    @type = type
    @belly = belly
  end

  def does_bear_roar
    return "Roooarrr"
  end

  def food_in_belly_count
    return @belly.length
  end

  def eating_from_the_river(fish_in_river)
    @belly << fish_in_river.last
    p fish_in_river.pop
    p @belly

  end

end
