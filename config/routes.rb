Rails.application.routes.draw do
  root to: 'expenditures#index'

  resources :plannings
  resources :expenditures
  resources :expenditures_classifications
  resources :incomes

  devise_for :riches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
