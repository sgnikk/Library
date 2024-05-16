Rails.application.routes.draw do
  get 'student_home/index'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  root 'sessions#new'
  get '/signup', to: 'users#new'
  #path for Admin Home Page
  get '/admin/home', to: 'admin_home#index', as: 'admin_home'
  # config/routes.rb
  get '/student/home', to: 'student_home#index', as: 'student_home'
  #authors page
  resources :authors
  #books page
  resources :books
  get '/booklist', to: 'books#booklist'
#  get '/borrowbooks', to: 'books#borrowbooks'
resources :books do
  member do
    post 'borrow'
  end
end
get '/borrowbooks', to: 'books#borrowbooks', as: 'borrow_books'
get '/borrowed_books', to: 'books#borrowed_books', as: 'borrowed_books'


end
