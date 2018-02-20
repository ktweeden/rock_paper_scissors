require 'minitest/autorun'
require_relative '../models/game'

class TestGame < MiniTest::Test

  def test_play__player_wins
    result = Game.play("rock", "scissors")
    assert_equal("win", result)
  end

  def test_play__player_lose
    result = Game.play("paper", "scissors")
    assert_equal("lose", result)
  end

  def test_play__player_draw
    result = Game.play("rock", "rock")
    assert_equal("draw", result)
  end

end
