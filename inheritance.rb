module SuperPowers
  def telekinesis
    "Eli is moved, by your awesome powers!"
  end

  def real_life_recurion
    "Recursion...Recursion...Recursion"
  end
end

class Animal
  attr_reader :blood_type, :birth_process, :locomotion, :name
  attr_accessor :dna_relation_to_humans
  @@world_population = 0
  def initialize(name, blood_type, birth_process, locomotion, *specifics)
    @name = name
    @blood_type = blood_type
    @birth_process = birth_process
    @locomotion = locomotion
    @age = 0
    @dna_relation_to_humans = nil
    @@world_population += 1
  end

  def birth
    "#{@name} was born"
  end

  def self.world_population
    @@world_population
  end

end

class Mammal < Animal
  def birth
    super + " and is nourished by the mother"
  end
end

class Amphibian < Animal
  def birth
    super + " by popping out of an egg"
  end
end

class Primate < Mammal
  include SuperPowers

  def initialize(name, blood_type, birth_process, locomotion, *specifics)
    super
    @dna_relation_to_humans = specifics[0]
  end
end

class Bat < Mammal
  def fly
    "I'm flying...in the dark."
  end
end

class Frog < Amphibian
end

class Chimpanzee < Primate

  def throw_feces
    "This is disgusting."
  end

end

mammal = Mammal.new("joe", "warm", "live", "walk")
p mammal.locomotion
p mammal.blood_type
p mammal.birth_process
puts mammal.birth
mammal2 = Mammal.new("joe", "warm", "live", "walk")
p Frog.world_population == 2
capuchin = Primate.new("joe", "warm", "live", "walk", 0.8)
p capuchin.dna_relation_to_humans
p capuchin.name
p capuchin.blood_type
batty = Bat.new("batty", "warm", "live", "fly")
p batty.fly
chimp = Chimpanzee.new("Chimpy", "warm", "live", "walk")
p chimp.throw_feces
p chimp.telekinesis
p chimp.real_life_recurion