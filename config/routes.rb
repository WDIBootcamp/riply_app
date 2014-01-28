RitlyApp::Application.routes.draw do

resources :urls, :users, :sessions
root to: "urls#search", as: :home_root

get '/signup' => 'users#new'
delete '/signout', to: 'sessions#destroy'
get'/signin' => 'sessions#new'

get "/go/:id", to: "urls#link", as: :go
put "/urls/:id", to: "urls#update", as: :update_url
get "/admin", to: "urls#admin", as: :admin




#   Prefix Verb   URI Pattern              Controller#Action
#     urls GET    /urls(.:format)          urls#index
#          POST   /urls(.:format)          urls#create
#  new_url GET    /urls/new(.:format)      urls#new
# edit_url GET    /urls/:id/edit(.:format) urls#edit
#      url GET    /urls/:id(.:format)      urls#show
#          PATCH  /urls/:id(.:format)      urls#update
#          PUT    /urls/:id(.:format)      urls#update
#          DELETE /urls/:id(.:format)      urls#destroy
#     root GET    /                        site#index

end
