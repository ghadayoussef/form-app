Rails.application.routes.draw do
  root 'web_forms#index'
  resources :web_forms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
