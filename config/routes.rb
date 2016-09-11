Rails.application.routes.draw do
  resources :pos_comments
  resources :neg_comments
  resources :positives
  resources :negatives
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
