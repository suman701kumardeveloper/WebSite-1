Rails.application.routes.draw do
  
get 'site_visitors/index'
root 'site_visitors#index'
resources :site_visitors
 
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
