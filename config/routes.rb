Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items, except: [:edit, :update] do
  resources :rentals, only: [:new, :create]
  end
  resources :users, only: [:show]


  resources :rentals, only: [:edit, :update, :destroy]



# get "/rentals/new", to: "rentals#new", as: :new_rental
# post "/rentals", to: "rentals#create"
# get "/rentals/:id/edit", to: "rentals#edit", as: :edit_rental
# patch "/rentals/:id", to: "rentals#update"
# delete "/rentals/:id", to: "rentals#destroy"

# get "/items", to: "items#index"
# get "/items/new", to: "items#new", as: :new_item
# post "/items", to: "items#create", as: :items
# delete "/items/:id", to: "items#destroy"
# get "/items/:id", to: "items#show", as: :item

get "/dashboard", to: "pages#dashboard", as: :dashboard

end

