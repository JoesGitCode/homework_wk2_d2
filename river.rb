class River

  attr_reader :name
  attr_accessor :river_fish

  def initialize(name, river_fish = [])
    @name = name
    @river_fish = river_fish
  end

  def amount_of_fish_in_river
    return @river_fish.length
  end

  def add_fish_to_river(fish)
    @river_fish << fish
  end

  def remove_fish(fish)
    @river_fish.delete(fish)
  end

end
