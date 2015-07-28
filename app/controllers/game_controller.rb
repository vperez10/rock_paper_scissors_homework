class GameController < ApplicationController
  # This action is for the bare domain. You can ignore it.
  def home
  	redirect_to("/mockup.html")
  end

  def flexible
  	@user_move = params["move"]
  	@computer_move = ["rock", "paper", "scissors"].sample

  	if @user_move == @computer_move
  		@outcome = "You tied!"
  	elsif @user_move == "paper" and @computer_move == "rock"
  		@outcome = "You win!"
  	elsif @user_move == "rock" and @computer_move == "paper"
  		@outcome = "You lose!"
  	elsif @user_move == "paper" and @computer_move == "scissors"
  		@outcome = "You lose!"
  	elsif @user_move == "scissors" and @computer_move == "paper"
  		@outcome = "You win!"
  	elsif @user_move == "scissors" and @computer_move == "rock"
  		@outcome = "You lose!"
  	elsif @user_move == "rock" and @computer_move == "scissors"
  		@outcome = "You win!"
  	end

  		render("game/flexible.html.erb")
  	end

def rock
	render("game/flexible/rock")
end

def paper
	render("game/flexible/paper")
end
  	
def scissors
	render("game/flexible/scissors")
end

  # Your code goes below.

end
