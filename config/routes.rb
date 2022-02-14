Rails.application.routes.draw do
  # read all tasks (index)
  get '/tasks', to: 'tasks#index'
  # create a task (new + create)
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'
  # read one task (show)
  get 'tasks/:id', to: 'tasks#show', as: :task
  # update a task (edit + update)
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'
  # delete a task (destroy)
  delete 'tasks/:id', to: 'tasks#destroy'
end
