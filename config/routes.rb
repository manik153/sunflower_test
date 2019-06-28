Rails.application.routes.draw do
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'shop#index'
  get 'shop' => 'shop#index'
  get 'order_list' => 'shop#order_list'
  post 'create_order' => 'shop#create_order'
end
