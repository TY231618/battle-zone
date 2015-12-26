require 'sinatra/base'

class BattleZone < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    session1 = params[:player1]
    session2 = params[:player2]
    @player1 = session1
    @player2 = session2
    erb(:play)
  end

  run! if app_file == $0
end
