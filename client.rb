class Client
  attr_accessor :code_breaker

  def make_move
  end

  def code_breaker?
    code_breaker == true
  end

  def code_maker?
    code_breaker == false
  end
end
