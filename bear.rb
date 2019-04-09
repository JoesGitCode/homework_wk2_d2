class Bear

  attr_reader :name, :type

  def initialize(name, type, belly_contents = [])
    @name = name
    @type = type
    @belly_contents = belly_contents
  end

  def amount_of_fish_in_belly
    @belly_contents.length
  end

  def sushi_buffet(fish)
    @belly_contents << fish
    @river1[@river_fish].pop()
  end
end
