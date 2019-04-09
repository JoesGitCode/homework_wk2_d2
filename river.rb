class River

  attr_reader :name, :fish

  def initialize(name, river_fish = [])
    @name = name
    @river_fish = river_fish
  end

  def amount_of_fish_in_river
    @river_fish.length
  end

  def add_fish_to_river(fish)
    @river_fish << fish
  end

end
