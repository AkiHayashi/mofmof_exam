Rails.application.routes.draw do
  root to:'estates#index'
  resources :estates do 
    collection do 
      post :confirm
    end
  end
end
