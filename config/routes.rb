Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'health_care_companies#index'
  resources :health_care_companies do
    resources :doctors do
      resources :hours, only: %i[create new destroy]
    end
  end
end
