Rails.application.routes.draw do
  get 'ingredients/index'

  get 'ingredients/show'

  get 'doses/index'

  get 'doses/new'

  get 'doses/show'

  get 'doses/create'

  get 'doses/update'

  get 'doses/edit'

  get 'doses/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
