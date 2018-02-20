require 'minitest/autorun'
require_relative '../models/game'

class TestGame < MiniTest::Test

  def test_play__player1_wins
    result = Game.play("rock", "scissors")
    assert_equal("Player 1 wins", result)
  end

  def test_play__player2_wins
    result = Game.play("paper", "scissors")
    assert_equal("Player 2 wins", result)
  end

  def test_play__player_draw
    result = Game.play("rock", "rock")
    assert_equal("You draw", result)
  end

end
