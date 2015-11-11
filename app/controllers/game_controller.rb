class GameController < ApplicationController
  def home

  end

  def results
    @choice = params[:choice]

    game = Game.new
    @computer_choice = game.computer_choice
    @outcome = game.outcome(@choice, game.return_winner(@choice, @computer_choice))
  end
end
