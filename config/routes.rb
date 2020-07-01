Rails.application.routes.draw do

	root to: "products#sku_finder"

  resources :products

  resources :customers do
  	collection do
  	end
  end

  get "sku_finder", to: "products#sku_finder", as: "sku_finder"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
