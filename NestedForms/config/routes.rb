Rails.application.routes.draw do
  resources :places, only: [:new, :create, :edit, :update]

	#get "place/new_release" => 'places#new_release', :as => :new_release
	match "place/new_release" => 'places#new_release', :as => :new_release, via: [:get, :post]
  match "place/new_address" => 'places#new_address', :as => :new_address, via: [:get, :post]

  root to: 'places#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
