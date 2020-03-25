Rails.application.routes.draw do
  resources :developers do
    resources :skills
  end
  resources :developers do
    resources :features
  end
  # get 'skills/index'
  # get 'skills/new'
  # get 'skills/create'
  # get 'skills/show'
  # get 'skills/edit'
  # get 'skills/update'
  # get 'skills/destroy'
  # get 'features/index'
  # get 'features/new'
  # get 'features/create'
  # get 'features/show'
  # get 'features/edit'
  # get 'features/update'
  # get 'features/destroy'
  root to: 'pages#home'
  resources :developers do
    resources :features
    resources :skills
  end
    # resources :skills

  # get 'developers/index'
  # get 'developers/new'
  # get 'developers/create'
  # get 'developers/show'
  # get 'developers/update'
  # get 'developers/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



 # resources :users, only: [ :update ]
 #    resources :trips do
 #      resources :steps, only: [ :new, :create, :edit, :update, :destroy ] do
 #        resources :activities, only: [ :new, :create, :edit, :update, :destroy ]
 #      end
 #    end
