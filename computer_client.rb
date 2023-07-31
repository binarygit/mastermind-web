class ComputerClient < Client
  def make_move
    if code_maker?
      value = ''
      6.times {value += rand(1..6).to_s}
      Move.new(value: value, master_code: true)
    end
  end
end
