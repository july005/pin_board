Rails.application.routes.draw do
  devise_for :users
  resources :pins do
  	member do
  		put "like", to: "pins#upvote"
  	end
  end
  get "/pages/:page" => "pages#show"
	root "pages#show", page: "home"
end
