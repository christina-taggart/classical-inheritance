class Animal
  attr_reader :num_legs, :blood, :reproduction, :dead
  def initialize
    @dead = false
  end
end

class Mammal < Animal
  def initialize
    super
    @blood = "warm"
    @reproduction = "viviparous"
  end
end

class Monotreme < Mammal
  def initialize
    super
    @reproduction = "oviparous"
  end
end

class Amphibian < Animal
  def initialize
    super
    @blood = "cold"
  end
end

class Primate < Mammal
  def initialize
    super
    @num_legs = 2
  end
end

class Frog < Amphibian
end

class TreeFrog < Frog
  def initialize(sex)
    super
    @sex = sex
  end
end

class Bat < Mammal
  def initialize
    super
    @wings = true
  end
end

class Chimpanzee < Primate
  def initialize
    super
    @use_tools = true
  end
end

chimpy = Chimpanzee.new

p chimpy.dead == false
p chimpy.num_legs == 2
p chimpy.reproduction == "viviparous"

echidna = Monotreme.new

p echidna.reproduction == "oviparous"