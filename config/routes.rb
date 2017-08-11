Rails.application.routes.draw do
  resources :cocktails do
    resources :doses
   end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  delete 'doses/:id', to:"doses#destroy"
  root to:"cocktails#index"
  mount Attachinary::Engine => "/attachinary"
end

