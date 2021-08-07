Rails.application.routes.draw do
   namespace :api, as: nil, defaults: { format: 'json' } do
      namespace :user do
        get 'list',to: 'user#index', as: 'list' 
        post 'create',       to: 'user#create', as: 'create'
        delete 'delete/:id',  to: 'user#destroy', as: 'delete'
        get 'show/:id', to: 'user#show'
        patch 'update', to: 'user#update'
        get 'typehead',to: 'user#typehead'      
      end
    end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
