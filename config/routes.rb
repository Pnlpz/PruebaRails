Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/todos', to: 'todos#index'
get 'todos/new'
post 'todos/new'
post '/todos', to: 'todos#create', as: 'create'
post 'todos/index'
get 'todos/:id', to: 'todos#show', as: 'todo'
patch '/todos/:id/edit', to: 'todos#edit', as: 'edit'
patch '/todos/:id', to: 'todos#update', as: 'update'
delete '/todos/:id', to: 'todos#destroy', as: 'delete'
get '/todos/:id', to: 'todos#complete'
get '/todos/list'

end
