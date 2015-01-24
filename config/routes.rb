Spree::Core::Engine.routes.draw do

  

    namespace :admin do
      resources :areamanagers
      resources :timeslots
  end

  # Add your extension routes here
end
