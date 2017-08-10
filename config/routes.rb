Rails.application.routes.draw do
<<<<<<< HEAD
  get 'ingredients/index'

  get 'ingredients/show'

  get 'doses/index'

  get 'doses/new'

  get 'doses/show'

  get 'doses/create'

  get 'doses/update'

  get 'doses/edit'

  get 'doses/destroy'

=======
  resources :cocktails do
    resources :doses
  end
>>>>>>> f5d35878c225fcb0d0abc4caa666ff4ba5635dc3
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
