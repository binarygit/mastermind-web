class ComputerClient < Client
  def make_move
    if code_maker?
      move = ''
      6.times {move += rand(1..6).to_s}
      move
    end
  end
end
