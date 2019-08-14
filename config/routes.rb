Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:new, :create, :index]
  end
  resources :reviews, only: [:edit, :show, :destroy, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
