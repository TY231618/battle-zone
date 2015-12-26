require 'sinatra/base'

class BattleZone < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb(:play)
  end

  run! if app_file == $0
end
