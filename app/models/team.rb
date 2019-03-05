class Team

    @@all = []

    attr_accessor :name, :motto

    def initialize(params)
        @name = params[:name]
        @motto = params[:motto]
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all.clear
    end
end