Rails.application.routes.draw do
  root 'web_forms#index'
  #get  '/web_forms/:title',to: 'web_forms#show'
  resources :web_forms
  resources :user_forms
  #get  '/web_forms',to: 'web_forms#index'
  
  #post '/web_forms',to: 'web_forms#create'
  #get  '/web_forms',to: 'web_forms#new'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
