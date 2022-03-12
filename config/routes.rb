Rails.application.routes.draw do
root to: 'homes#top'
#get 'books', to: 'lists#index', as: :books
resources "lists", path: "books"
end
