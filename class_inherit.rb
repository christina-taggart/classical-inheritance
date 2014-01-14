class Animal
  attr_reader :num_legs, :blood_temp, :birth_type, :speed

  def initialize(num_legs, blood_temp)
    @num_legs = num_legs
    @blood_temp = blood_temp
  end

  def move(speed)
    @speed = speed
  end


end

class Mammal < Animal
  def give_birth
    @birth_type = "live"
  end

  def move(speed)
    super(speed += 5)
  end
end

class Amphibian < Animal
  def give_birth
    @birth_type = "lay eggs"
  end

  def move(speed)
    super(speed += 7)
  end

end

class Primate < Mammal

end

class Frog < Amphibian
end

class Bat < Mammal
end

class Chimpanzee < Primate
end

p monkey = Primate.new(2, "warm")
p monkey.num_legs
monkey.give_birth
p monkey.birth_type
p monkey.move(5) == 10
p monkey.speed

p turtle = Amphibian.new(4,"cold")
p turtle.num_legs
turtle.give_birth
p turtle.birth_type
p turtle.move(1) == 8
p turtle.speed

p ribbit = Frog.new(4, "cold")
p ribbit.num_legs
p ribbit.blood_temp
ribbit.give_birth
p ribbit.birth_type
p ribbit.move(6) == 13
p ribbit.speed


