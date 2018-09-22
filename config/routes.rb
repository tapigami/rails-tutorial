Rails.application.routes.draw do
  scope module: :web, as: :web do
    root to: 'root#index'

    resource :sign_in, only: %i[show]
    resources :authentications, only: %i[create destroy]

    resources :users, only: %i[index show new create] do
      scope module: :users do
        resources :microposts, only: %i[index]
        resources :followers,  only: %i[index]
        resources :followings, only: %i[index]
      end
    end

    scope module: :authentication do
      resources :microposts, only: %i[new create destroy]
      resource :timeline, only: %i[show]
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
