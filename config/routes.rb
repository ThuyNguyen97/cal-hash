Rails.application.routes.draw do
  root "cals#show"
  get "calc-hash/:query", to: "cals#index"
end
