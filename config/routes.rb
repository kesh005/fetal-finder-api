Rails.application.routes.draw do
   namespace :api do
    namespace :v1 do
      resources :nodes, only: [:show]
   end
  end
end