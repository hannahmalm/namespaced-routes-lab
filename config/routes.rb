Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

  #create a namespace for all of the admin controllers 
  namespace :admin do 
    resources :preferences
  end 

end
