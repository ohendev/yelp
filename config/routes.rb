Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    collection do
      get :avis
      get :rating
      get :search
    end
    resources :reviews, only: [ :create ]
  end
end
