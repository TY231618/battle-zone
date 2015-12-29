require 'capybara'
require_relative '../app/app.rb'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player2) {double :player}
  let(:player1) {double :player}

  describe 'initialize' do
    scenario 'it retrieves player 1' do
      expect(game.player1).to eq player1
    end

    scenario 'it retrieves player 2' do
      expect(game.player2).to eq player2
    end
  end

  describe '#attack' do
    scenario 'it ' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end
end
