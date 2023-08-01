class Move
  attr_reader :value

  def initialize(value:, master_code: false)
    @value       = value
    @master_code = master_code
  end
end
