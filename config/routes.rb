Rails.application.routes.draw do
root to: 'homes#top'
#get 'books', to: 'lists#index', as: :books

resources :books, only: [:index, :show, :create, :top, :new, :edit, :destroy]#, path: "books" , as: :book
#resources :lists, as: :book
#resources :books, only: [:index, :show, :create, :top, :new, :edit, :destroy]
patch 'books/:id' => 'books#update',as: 'update_book'
#resources :lists, except: [:update]

end
