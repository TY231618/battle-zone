require 'sinatra/base'
require_relative './models/player.rb'

class BattleZone < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/enter_name' do
    # session[:player1] = params[:player1]
    # session[:player2] = params[:player2]
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name #session[:player1]
    @player2 = $player2.name #session[:player2]
    @player1_hp = $player1.hp
    @player2_hp = $player2.hp

    erb(:play)
  end

  get '/attack' do
    @player1 = $player1.name #session[:player1]
    @player2 = $player2.name #session[:player2]
    $player1.attack($player2)
    erb(:attack)
  end

  run! if app_file == $0
end
