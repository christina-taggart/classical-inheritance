class Animal
  attr_accessor :name, :habitat, :mating_ritual, :temperament, :warm_blooded
  def initialize(name, habitat, mating_ritual, temperament, warm_blooded)
    @name = name
    @warm_blooded = warm_blooded
    @habitat = habitat
    @mating_ritual = mating_ritual
    @temperament = temperament
    @number_of_offspring = 0
  end
end


class Amphibian < Animal
  def initialize(name, habitat, mating_ritual, temperament, warm_blooded = false)
    super
  end

  def swim
    puts "You just swam through the nile!"
  end
end

class Mammal < Animal
  def initialize(name, habitat, mating_ritual, temperament, warm_blooded = true)
    super
  end

  def give_live_birth
    @number_of_offspring = rand(1..5)
  end
end


class Frog < Amphibian
  def initialize(name, habitat, mating_ritual, temperament)
    super
  end

  def croak
    puts "ribbit ribbit"
  end
end

class Primate < Mammal
  attr_accessor :has_ticks
  def initialize(name, habitat, mating_ritual, temperament)
    super
    @has_ticks = true
  end

  def groom_friend(friend)
    friend.has_ticks = false
  end
end


class Chimp < Primate
  def initialize(name, habitat, mating_ritual, temperament)
    super
  end

end


class Bat < Mammal
  def initialize(name, habitat, mating_ritual, temperament)
    super
  end
end

p lioness = Animal.new("lioness", "grasslands", "violent", "deadly", true)
p sloth = Mammal.new("sloth", "jungle", "upside-down", "chill")
p newt = Amphibian.new("newt", "river", "kinky", "shy")
p orangutan = Primate.new("orangutan", "rainforest", "polygamy", "intelligent")
p dunston = Chimp.new("Dunston", "city", "celebate", "comical")