require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
    erb :super_hero
    end


    post '/teams' do
      @team = Team.new(params[:team])
      params[:team][:members].each do |p|
        Super_hero.new(p)
      end
    @super_hero = Super_hero.all
          erb :team
    end








end
