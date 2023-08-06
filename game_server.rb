require 'js'

class GameServer
  attr_reader :document, :form

  def initialize
    @document = JS.global[:document]
    @form = document.getElementById "main-form"
    current_url = JS.global[:window][:location][:href]
    if current_url.to_s.match?(/breaker=true/)
      @code_maker   = ComputerClient.new
      @code_breaker = HumanClient.new(code_breaker: true)
      @code_breaker.game_server = self
    end
  end

  def start
    @code_maker.make_move
    @code_breaker.make_move
  end

  def continue(move)
    puts move.value
  end
end

game_server = GameServer.new
game_server.start
