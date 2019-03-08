class Team

  attr_reader :name, :motto

  def initialize(args)
    @name = params[:name]
    @motto = params[:motto]
  end
end
