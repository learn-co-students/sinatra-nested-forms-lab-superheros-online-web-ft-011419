require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new({name: params[:team][:name], motto: params[:team][:motto]})
      heroes = params[:team][:heroes]
      @super_heroes = heroes.map do |hero_params|
        SuperHero.new({name: hero_params[:name], power: hero_params[:power], bio: hero_params[:bio]})
      end
      erb :teams
    end

    get '/teams' do
      erb :teams
    end
end
