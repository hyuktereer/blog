Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'blogs#index'
  resources :blogs 
  
  post   '/like/:article_id' => 'like#create',   as: 'like'
  delete '/like/:id' => 'like#destroy', as: 'unlike'
end
