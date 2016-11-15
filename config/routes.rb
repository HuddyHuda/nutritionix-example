Rails.application.routes.draw do
  get '/about', to: 'externals#about'
  get '/help', to: 'externals#help'
  # get '/search/:keyword', to: 'externals#search'
  get '/search/', to: 'externals#search'
  post '/searchpost', to: 'externals#searchpost'
  root 'externals#index'
end
