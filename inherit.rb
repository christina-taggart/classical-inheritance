#Define 7 empty classes: Animal Mammal, Amphibian, Primate, Frog, Bat, and Chimpanzee.
module SuperPower
  def fire_head_mounted_laser_beam
    "#{self.class} has fired its head mounted laser beam!!!! BZzzzzzp!"
  end

  def superior_intellect
    "This #{self.class} is now as smart as David Goodman"
  end
end

include SuperPower

class Animal
end

class Mammal < Animal
  attr_accessor :warm_blooded
end

class Amphibian < Animal
end

class Primate < Mammal
  attr_reader :num_legs
  def initialize
    @num_legs = 2
  end
end

class Chimpanzee < Primate

  def initialize
    super
    @warm_blooded = true
  end

  def eat_bananas
    true
  end
end

class Frog < Amphibian
end

class Bat < Mammal
  def who_is_scared_of_me?(name)
    p "#{name} is scared of the Bat."
  end
end

david = Primate.new
p david.num_legs == 2
rick = Chimpanzee.new
p rick.num_legs == 2
p rick.eat_bananas

p rick.warm_blooded

dracula = Bat.new
p dracula.who_is_scared_of_me?("Alejandro")
p dracula.superior_intellect
p rick.fire_head_mounted_laser_beam
