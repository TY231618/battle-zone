require 'sinatra/base'

class BattleZone < Sinatra::Base

  get '/' do
    'Welcome to Battle Zone'
  end

  run! if app_file == $0
end
