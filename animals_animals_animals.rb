require_relative 'animals_behaving_badly.rb'

class Animal
  attr_reader :kingdom, :eats_things, :call, :temperature_regulation

  def initialize
    @kingdom = "Animalia"
    @eats_things = true
    @call
    @temperature_regulation
  end

  def call
    puts "#{@call.upcase}! says the #{self.class}."
  end
end

class Mammal < Animal
  attr_reader :clade

  def initialize
    super
    @clade = "Mammalia"
    @temperature_regulation = "endothermic"
  end
end

class Amphibian < Animal
  attr_reader :clade

  def initialize
    super
    @clade = "Amphibia"
    @temperature_regulation = "ectothermic"
  end
end

class Frog <  Amphibian
  attr_reader :species
  def initialize
    super
    @species = "Frog"
    @call = "ribbit"
  end
end

class Bat < Mammal
  attr_reader :species

  def initialize
    super
    @species = "Bat"
    @call = "eeeeee"
  end
end

class Primate < Mammal
  attr_reader :opposable_thumb, :order

  def initialize
    super
    @order = "Primates"
    @opposable_thumb = true
  end
end

class Chimpanzee < Primate
  include AnimalsBehavingBadly
  attr_reader :species

  def initialize
    super
    @species = "Chimpanzee"
    @call = "ooo ooo aaa aaa"
  end
end


#-----DRIVERS------
nim_chimpsky = Chimpanzee.new
nim_chimpsky.call
puts "I am a #{nim_chimpsky.species}."
puts "I belong to the kindgom #{nim_chimpsky.kingdom}, the clade #{nim_chimpsky.class}, \
and the order #{nim_chimpsky.order}."
puts "I am #{nim_chimpsky.temperature_regulation}."
nim_chimpsky.throws(nim_chimpsky.species, "bananas")
nim_chimpsky.hoot
nim_chimpsky.throws(nim_chimpsky.species, "rocks")