class  SuperHero
  attr_accessor :name, :power, :bio
  @@all =[]
def initialize(args)
  @name = args[:name]
@power =   args[:power]
@bio =  args[:biography]
@@all << self
end
def self.all
   @@all
 end
 def self.clear
   @@all.clear
 end





end
