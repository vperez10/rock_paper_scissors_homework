class GameController < ApplicationController
  # This action is for the bare domain. You can ignore it.
  def computer_move
  	@computer_move = ["rock", "paper", "scissors"].sample
  end

  def home
    redirect_to("/mockup.html")
  end

  def rock
  	render("play.html.erb")
  end

  def paper
  	render("play.html.erb")
  end

  def scissors
  	render("play.html.erb")
  end

  # Your code goes below.

end
