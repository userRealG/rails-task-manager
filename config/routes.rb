Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index' #list
  get 'tasks/new', to: 'tasks#new', as: :new_task #new
  get 'tasks/:id', to: 'tasks#show', as: :task
  post 'tasks', to: 'tasks#create' #add
  get 'tasks/:id/edit', to: 'tasks#edit' #edit
  patch 'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy' #delete
end
