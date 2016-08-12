Rails.application.routes.draw do
  resources :items, only: %i[index show] do
    collection do
      get :recommended
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
