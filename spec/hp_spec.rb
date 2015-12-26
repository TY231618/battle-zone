require 'capybara'
require_relative '../app.rb'


  feature 'HP' do
    include Capybara::DSL
    Capybara.default_driver = :selenium

    scenario 'allows player to view opponent HP' do
      sign_up_and_play
      expect(page).to have_content('Robert: 100/100HP')
    end
  end
