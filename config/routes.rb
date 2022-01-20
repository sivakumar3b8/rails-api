Rails.application.routes.draw do

  resources :users do 
    collection do
      get :user_search
     end
  end

end
