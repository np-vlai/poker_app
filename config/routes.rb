Rails.application.routes.draw do
  # For details on the DSL av"ailable within this file, see http://guides.rubyonrails.org/routing.html
  get "show" => "cards#show"
  post "show" => "cards#judge_cards"
  mount PokerApi::API => "/"
end


