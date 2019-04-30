class SuperHero

  attr_accessor :name, :power, :bio

  def self.all
    @@all ||= []
  end

  def initialize(args={})
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
  end
  
end
