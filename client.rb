class Client
  attr_accessor :code_breaker

  def initialize(code_breaker: false)
    @code_breaker = code_breaker
  end

  def make_move
  end

  def code_breaker?
    code_breaker == true
  end

  def code_maker?
    code_breaker == false
  end
end
