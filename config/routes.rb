Rails.application.routes.draw do
  root 'portal#show'

  resources :items, only: %i[index show] do
    collection do
      get :recommended
      get :uncategorized
    end
  end

  resource :portal, only: %i[show]

  resources :categories, only: %i[index] do
    resources :items, only: %i[index] do
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
