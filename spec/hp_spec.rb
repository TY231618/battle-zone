require 'capybara'
require_relative '../app/app.rb'


  feature 'HP' do
    scenario 'allows player to view opponent HP' do
      sign_up_and_play
      expect(page).to have_content('Robert: 100/100HP')
    end
  end
