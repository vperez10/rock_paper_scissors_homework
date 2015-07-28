Rails.application.routes.draw do
  # This route is for the bare domain. You can ignore it.
  get("/", { :controller => "game", :action => "home" })
  get("/play/rock", { :controller => "game", :action => "rock"})
  get("/play/paper", { :controller => "game", :action => "paper"})
  get("/play/scissors", { :controller => "game", :action => "scissors"})

  get("/flexible/:move", { :controller => "game", :action => "flexible"})

  # Your code goes below.

end
