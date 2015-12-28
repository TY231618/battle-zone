require 'capybara'
require_relative '../app/app.rb'

describe Game do

  subject(:game) {described_class.new}
  let(:player1) {double :player}
  let(:player2) {double :player}

  feature '#attack' do
    scenario 'damages the player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end
end
