class River

  attr_reader :name

  def initialize(name, number_of_fish)
    @name = name
    @number_of_fish = number_of_fish
  end

  def number_of_fish_count
    return @number_of_fish.count
  end

  def add_fish_to_river(new_fish)
    @number_of_fish.push(new_fish)
  end

  def fish_in_river_total
    return @number_of_fish
  end

  def add_fish_to_river()
    if number_of_fish_count <= 3
      @number_of_fish.push()

    end
  end


end
