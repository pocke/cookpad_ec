Rails.application.routes.draw do
  root 'portal#show'

  resources :items, only: %i[index show] do
    collection do
      get :recommended
    end
  end

  resource :portal, only: %i[show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
