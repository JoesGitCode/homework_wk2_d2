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
    # @river1.remove_fish(fish)
  end

  def bear_noise
    "rar"
  end

  def bear_boast
    "I have #{amount_of_fish_in_belly()} fish in my belly!"
  end
end
