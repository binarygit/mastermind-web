require "test-unit"
require_relative "../move"
require_relative "../client"
require_relative "../computer_client"

class TestComputerClient < Test::Unit::TestCase
  def setup
    @computer_client = ComputerClient.new
  end

  def test_that_it_is_a_code_maker
    assert @computer_client.code_maker?
  end

  def test_it_is_not_a_code_breaker
    refute @computer_client.code_breaker?
  end

  def test_make_move
    move = @computer_client.make_move
    assert move
    assert move.value
    assert_equal 6, move.value.length
  end
end
