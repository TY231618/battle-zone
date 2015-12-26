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
end
