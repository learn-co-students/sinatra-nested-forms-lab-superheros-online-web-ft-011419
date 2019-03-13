class Superhero
  attr_accessor :name, :power, :biography
  @@superheroes = []
  def initialize(data)
    @name = data[:name]
    @power = data[:power]
    @biography = data[:biography]
    @@superheroes << self
  end

  def self.all
    @@superheroes
  end
end
