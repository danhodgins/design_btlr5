Rails.application.routes.draw do

  resources :jobs
  resources :designers
  resources :customers
  
  #This needs to be here, otherwise error (as notes resource didn't exist on its own)
  resources :notes
  
  
  devise_for :users
  
  
  resources :jobs do
    resources :customers
  end
  
  resources :jobs do
    resources :designers
  end
  
  resources :customers do
    resources :jobs 
  end
  
  resources :customers do
    resources :designers
  end
  
  
  resources :designers do
    resources :jobs 
  end
  
  resources :designers do
    resources :customers 
  end
  
  
    resources :designers do
      resources :tasks
    end
  
  
    resources :tasks do
      resources :notes
    end
    
    resources :jobs do
      resources :notes
    end
 


    resources :users do
      resources :jobs
    end
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
 
  authenticated :user do
    root :to => "jobs#index"
  end
  unauthenticated :user do
    devise_scope :user do 
      get "/" => "devise/sessions#new"
    end
  end
end
