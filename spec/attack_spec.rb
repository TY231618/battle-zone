require 'capybara'
require_relative '../app/app.rb'


  feature 'attack' do
    scenario 'allows a player to strike opponent' do
      sign_up_and_play
      click_button('Attack')
      expect(page).to have_content('Tony attacked Robert')
    end
  end
