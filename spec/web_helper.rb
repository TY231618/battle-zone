def one_player_game
  visit "http://localhost:9292/"
  fill_in(:player1, with: 'Tony')
  click_button('Enter Battle')
end

def sign_up_and_play
  visit "http://localhost:9292/"
  fill_in(:player1, with: 'Tony')
  fill_in(:player2, with: 'Robert')
  click_button('Enter Battle')
end
