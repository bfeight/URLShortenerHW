Rails.application.routes.draw do
  root to: 'short_urls#index'
  resource :short_urls, only: ['create', 'new']

  get '/show/:id' => 'short_urls#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
