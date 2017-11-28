Rails.application.routes.draw do

root :to => 'pages#index'
devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}

  resources :listings do 
    resources :reservations, only: [:new, :create]
  end

  

get '/search' => 'pages#search'
get '/ajaxsearch' => 'pages#ajaxsearch'

resources :listings
post 'listings/:id', to: 'listings#show'
  get 'manage-listing/:id/basics' => 'listings#basics', as: 'manage_listing_basics'
  get 'manage-listing/:id/goalprice' => 'listings#goalprice', as: 'manage_listing_goalprice'
  get 'manage-listing/:id/perprice' => 'listings#perprice', as: 'manage_listing_perprice'
  get 'manage-listing/:id/address' => 'listings#address', as: 'manage_listing_address'
  get 'manage-listing/:id/photos' => 'listings#photos', as: 'manage_listing_photos'
  get 'manage-listing/:id/genre' => 'listings#genre', as: 'manage_listing_genre'  

  get 'manage-listing/:id/articles' => 'listings#articles', as: 'manage_listing_articles'

  get 'manage-listing/:id/bankaccount' => 'listings#bankaccount', as: 'manage_listing_bankaccount'
  get 'manage-listing/:id/publish' => 'listings#publish', as: 'manage_listing_publish'
end
