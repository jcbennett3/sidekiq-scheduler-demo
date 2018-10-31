Rails.application.routes.draw do
  root to: 'dashboard#index'
  get '/contact', to: 'contact#new'
  post '/contact', to: 'contact#create'
end
