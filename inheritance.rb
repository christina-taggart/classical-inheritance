
module Superpowers
  attr_accessor :magic_points
  def use_laser_vision
    magic_points += 10
    puts "fired lasers"
  end
end

class Animal
  attr_reader :blood, :heart
  def initialize
    @heart = "beating"
    @blood = "running"
  end
end

class Mammal < Animal
  attr_reader :hair
  def initialize
    super
    @hair = "yes"
  end
end

class Amphibian < Animal
  include Superpowers
  def initialize
    super
    @slime = "gooey"
  end
end

class Primate < Mammal
  def initialize
    super
    @eyes = 2
    @legs = "semi bipedal"
  end
end

class Frog < Amphibian
  def initialize
    super
    @tongues = "long"
  end
end

class Bat < Mammal
  def initialize
    super
    @wings = "to fly"
  end
end

class Chimpanzee < Primate
  def initialize
    super
    @grooms = "social animal"
  end
end

andy = Chimpanzee.new
puts andy.hair == "yes"
