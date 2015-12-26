require 'capybara'
require_relative '../app.rb'
include Capybara::DSL

describe BattleZone do
  Capybara.default_driver = :selenium

  feature 'when starting a game' do
    scenario 'you see a welcome page' do
      visit "http://localhost:9292/"
      expect(page).to have_content 'Welcome to Battle Zone'
    end
  end

  feature 'enter names' do
    scenario 'players enter name and receive visual confirmation' do
      visit "http://localhost:9292/"
      fill_in(:player1, with: 'Tony')
      click_button('Enter Battle')
      expect(page).to have_content('Tony')
    end
  end
end
