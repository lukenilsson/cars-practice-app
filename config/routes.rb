Rails.application.routes.draw do
  resources :cars
post "/cars" => "cars#create"

post "/owners" => "owners#create"
end
