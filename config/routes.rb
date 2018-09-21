Rails.application.routes.draw do
  scope module: :web do
    resources :microposts
  end

  root to: 'root#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
