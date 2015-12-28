require 'capybara'
require_relative '../app/app.rb'


  feature Player do
    include Capybara::DSL
    Capybara.default_driver = :selenium

    subject(:player) {described_class.new('Tony')}
    scenario 'it returns player name' do
      expect(subject.name).to eq 'Tony'
    end
  end
