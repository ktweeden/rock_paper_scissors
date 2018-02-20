class Game

  RESULTS = {
    'rock' => {
      'scissors' => 'Player 1 wins',
      'paper' => 'Player 2 wins',
      'rock' => 'You draw'
    },
    'paper' => {
      'rock' => 'Player 1 wins',
      'scissors' => 'Player 2 wins',
      'paper' => 'You draw'
    },
    'scissors' => {
      'paper' =>'Player 1 wins',
      'rock' => 'Player 2 wins',
      'scissors' => 'You draw'
    }
  }

  def Game.play(player1_guess, player2_guess)
    RESULTS[player1_guess][player2_guess]
  end

  def Game.play_computer(guess)
    a = ['rock','paper', 'scissors']
    index = rand(0..2)
    RESULTS[guess][a[index]]
  end

end
