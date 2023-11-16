require "test-unit"
require 'debug'
require_relative "../board"

class BoardTest < Test::Unit::TestCase
  def setup
    @board = Board.new
    @board.master_code = '1111'
  end

  def test_increase_turn
    assert_equal 0, @board.turn
    @board.increase_turn
    assert_equal 1, @board.turn
  end

  def test_clues
    assert @board.clues('2222').empty?
  end
end

class MasterCodeTest < BoardTest
  def test_it_returns_correct_boolean
    master_move     = '1111'
    non_master_move = '6666'

    assert @board.master_code?(master_move)
    refute @board.master_code?(non_master_move)
  end
end
