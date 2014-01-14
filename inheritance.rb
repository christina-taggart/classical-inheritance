class Animal
  attr_reader :legs, :warm_blood, :skin_type
  def initialize (legs=4, warm_blood=true, skin_type="fur")
    @legs = legs
    @warm_blood = warm_blood
    @skin_type = skin_type
  end
end


class Amphibian < Animal
  def initialize
    super(4, false, "membrane")
  end

end


class Frog < Amphibian
  def initialize
    super
  end

end


class Mammal < Animal
  def initialize(legs=4)
    super(legs, true, "fur")

  end
end


class Primate < Mammal
  def initialize
    super(2)
  end
end


class Bat < Mammal
  def initialize(legs=4)
    super(legs)
  end

end


class Chimpanzee < Primate
  def initialize
    super
  end

end



annie = Animal.new
p annie.inspect

manny = Mammal.new
p manny.inspect

prinny = Primate.new
p prinny.inspect

billy = Chimpanzee.new
p billy.legs == 2

freddie = Frog.new
p freddie.skin_type == "membrane"
p freddie.inspect

batman = Bat.new(2)
p batman.legs == 2
p batman.inspect

alex = Amphibian.new
p alex.skin_type == "membrane"
p alex.inspect


