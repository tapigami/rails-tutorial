Rails.application.routes.draw do
  scope module: :web do
    root to: 'root#index'

    scope module: :authentication do
      resources :microposts
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
