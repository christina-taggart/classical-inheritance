class Animal
  def warm_blooded?
    @warm_blooded = true
  end
  def breathes
    puts "Definitely does the breathing thing."
  end
end

class Mammal < Animal
  initialize
    @num_of_limbs = 4
  end
  def has_hair?
    true
  end
end

class Amphibian < Animal
  @warm_blooded = false
  def warm_blooded?
    false
  end
end

class Primate < Mammal
end

class Frog < Amphibian
end

class Bat < Mammal
end

class Chimpanzee < Mammal
end

p Amphibian.new.warm_blooded?