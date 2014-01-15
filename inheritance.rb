module SuperPowers
  def use_laser_vision
    puts "Piu piu...(lasers)!"
  end
  def telekinesis
    puts "I am moving things with my mind."
  end
  def mediocrity
    puts "I am mediocre."
  end
  def magic_points
    self.life_span += 10
  end
end


class Animal
  attr_reader :number_of_legs, :life_span, :eats_food
  def initialize
    @number_of_legs = 0
    @life_span = 0
    @eats_food = true
  end
end

class Amphibian < Animal
  attr_reader :ex_vivo_metamorphosis, :ectothermic, :slimy, :aquatic
  def initialize
    super
    @ex_vivo_metamorphosis = true
    @ectothermic = true
    @slimy = true
    @aquatic = true
  end
end

class Mammal < Animal
  attr_reader :in_vivo_metamorphosis, :hair, :endothermic
  def initialize
    super
    @in_vivo_metamorphosis = true
    @hair = true
    @endothermic = true
  end
end

class Primate < Mammal
  attr_reader :opposable_thumb, :social
  def initialize
    super
    @opposable_thumb = true
    @social = true
    @number_of_legs = 2
  end
end

class Bat < Mammal
  attr_reader :wings, :rabies, :vampires
  def initialize
    super
    @wings = true
    @rabies = true
    @vampires = true
    @number_of_legs = 2
    @life_span = 8
  end
end

class Frog < Amphibian
  include SuperPowers
  attr_reader :cute, :loud
  attr_accessor :life_span
  def initialize
    super
    @cute = true
    @loud = true
    @number_of_legs = 4
    @life_span = 3
  end
end

class Chimpanzee < Primate
  attr_reader :color, :strong, :funny_face
  def initialize
    super
    @color = "orange"
    @strong = true
    @funny_face = true
    @life_span = 25
  end
end

steve = Frog.new
p steve
p steve.number_of_legs == 4
p steve.life_span == 3
steve.magic_points
p steve.life_span == 13
steve.mediocrity
steve.use_laser_vision