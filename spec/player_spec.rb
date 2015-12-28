require 'capybara'
require_relative '../app/app.rb'


describe Player do
  subject(:tony) {Player.new('Tony')}
  subject(:robert) {Player.new('Robert')}

  feature '#name' do
    scenario 'it returns player name' do
      expect(tony.name).to eq 'Tony'
    end
  end

  feature '#hp' do
    scenario 'returns player hp' do
      expect(tony.hp).to eq described_class::DEFAULT_HP
    end
  end

  feature '#attack' do
    scenario 'it reduces opponents HP when attacked' do
      expect{tony.receive_damage}.to change{tony.hp}.by(-10)
    end
  end
end
