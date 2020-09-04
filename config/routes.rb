Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'project/new'
  post '/project', to:'project#create'
  get 'project/dashboard'

end
