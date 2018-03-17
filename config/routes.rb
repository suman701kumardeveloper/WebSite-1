Rails.application.routes.draw do
  
get "store/index"
resources :site_visitors
 
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
