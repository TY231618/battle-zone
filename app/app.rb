require 'sinatra/base'
require_relative './models/player.rb'
require_relative './models/game.rb'


class BattleZone < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/enter_name' do
    $game = Game.new
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player1_hp = $player1.hp
    @player2_hp = $player2.hp

    erb(:play)
  end

  get '/attack' do
    @player1 = $player1.name
    @player2 = $player2.name
    $game.attack($player2)
    erb(:attack)
  end

  run! if app_file == $0
end
