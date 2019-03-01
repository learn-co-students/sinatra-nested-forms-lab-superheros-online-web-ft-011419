class SuperHero

  attr_reader :name, :power, :bio

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
  end

  def self.all
    @@all ||= []
  end

  def save
    self.class.all << self
  end
end
