class Board
  attr_accessor :master_code, :turn

  def initialize
    @turn = 0
  end

  def master_code?(move)
    master_code == move.to_s
  end

  def increase_turn
    @turn += 1
  end

  def clues(move)
    move.chars.each do
      if master_code.include?(_1)
      else
        return []
      end
    end
  end

  def check_winner(move)
    nil
  end
end
