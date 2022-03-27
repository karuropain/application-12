Rails.application.routes.draw do
root to: 'homes#top'
#get 'books', to: 'lists#index', as: :books

resources "lists", path: "books"
patch 'books/:id' => 'lists#update',as: 'update_list'
#resources :lists, only: [:index, :show, :create, :top, :new, :edit, :destroy]
#resources :lists, except: [:update]

end
