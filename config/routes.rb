Rails.application.routes.draw do

  resources :receptions
  resources :delivered_orders
  resources :custmer_client_addresses
  resources :customer_clients
  resources :countries do
    resources :regions do 
      resources :communes
    end
  end
  get 'reports/warehouse', to: "reports#warehouse", as: "warehouse_report"
  get 'reports/weekly_delivered_orders', to: "reports#weekly_delivered_orders", as: "weekly_delivered_orders_report"
  resources :stocks
  resources :warehouse_locations
  resources :warehouses
	root to: "products#sku_finder"

  ##imports
  post "import_customers", to: "customers#import_agunsa_customers", as: "import_agunsa_customers"
  post "import_agunsa_products", to: "products#import_agunsa_products", as: "import_agunsa_products"
  post "import_agunsa_warehouses", to: "warehouses#import_agunsa_warehouses", as: "import_agunsa_warehouses"
  post "import_agunsa_warehouse_locations", to: "warehouse_locations#import_agunsa_warehouse_locations", as: "import_agunsa_warehouse_locations"
  post "import_agunsa_stock", to: "stocks#import_agunsa_stock", as: "import_agunsa_stock"
  post "import_agunsa_delivered_orders", to: "delivered_orders#import_agunsa_delivered_orders", as: "import_agunsa_delivered_orders"
  post "import_agunsa_receptions", to: "receptions#import_agunsa_receptions", as: "import_agunsa_receptions"

  resources :products

  resources :customers do
  	collection do
  	end
  end

  get "sku_finder", to: "products#sku_finder", as: "sku_finder"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
