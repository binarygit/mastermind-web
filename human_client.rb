require 'js'

class HumanClient < Client
  def make_move
    if code_breaker?
      document = JS.global[:document]
      form = document.getElementById "main-form"

      form.addEventListener("submit") do |ev|
        ev.call(:preventDefault)
        move = document.getElementById('move-input')[:value]
        @game_server.continue(move)
      end
    end
  end
end
