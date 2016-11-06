Rails.application.routes.draw do
  get '/articles', to: 'articles#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/hello', to: 'hello#index'
  post '/hello', to: 'hello#say_hello'
end
