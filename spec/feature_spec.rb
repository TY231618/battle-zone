require 'capybara'
require_relative '../app.rb'
include Capybara::DSL

describe BattleZone do
  Capybara.default_driver = :selenium

  feature 'when starting a game' do
    scenario 'you see a welcome page' do
      visit "http://localhost:9292/"
      expect(page).to have_content 'Welcome to Battle Zone!'
    end
  end

  feature 'enter names' do
    scenario 'player enters name and receives visual confirmation of name' do
      visit "http://localhost:9292/"
      fill_in(:player1, with: 'Tony')
      click_button('Enter Battle')
      expect(page).to have_content('Tony')
    end

    scenario 'allows a two player game with visual confirmation of names' do
      visit "http://localhost:9292/"
      fill_in(:player1, with: 'Tony')
      fill_in(:player2, with: 'Robert')
      click_button('Enter Battle')
      expect(page).to have_content('Robert')
    end
  end

  feature 'HP' do
    scenario 'allows player to view opponent HP' do
      visit "http://localhost:9292/"
      fill_in(:player1, with: 'Tony')
      fill_in(:player2, with: 'Robert')
      click_button('Enter Battle')
      expect(page).to have_content('Robert: 100/100HP')
    end
  end
end
