require 'sinatra/base'

class BattleZone < Sinatra::Base

  enable :sessions

  get '/' do

    erb(:index)
  end

  post '/play' do
    session = params[:player1]
    @player1 = session
    erb(:play)
  end

  run! if app_file == $0
end
