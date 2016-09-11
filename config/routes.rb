Rails.application.routes.draw do
  
  
  resources :positives, except: [:edit, :update, :destroy] do
    resources :pos_comments, except: [:edit, :update, :destroy]
  end
  resources :negatives, except: [:destroy] do
    resources :neg_comments, except: [:edit, :update, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
