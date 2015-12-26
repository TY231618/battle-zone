require 'capybara'
require_relative '../app.rb'

describe BattleZone do
  
  include Capybara::DSL
  Capybara.default_driver = :selenium

  feature 'when starting a game' do
    scenario 'you see a welcome page' do
      visit "http://localhost:9292/"
      expect(page).to have_content 'Welcome to Battle Zone!'
    end
  end

  feature 'name entering' do
    scenario 'player enters name and receives visual confirmation of name' do
      one_player_game
      expect(page).to have_content('Tony')
    end

    scenario 'allows a two player game with visual confirmation of names' do
      sign_up_and_play
      expect(page).to have_content('Robert')
    end
  end
end
