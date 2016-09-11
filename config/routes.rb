Rails.application.routes.draw do
  
  
  resources :positives, except: [:edit, :destroy] do
    resources :pos_comments, except: [:edit, :destroy]
  end
  resources :negatives, except: [:edit, :destroy] do
    resources :neg_comments, except: [:edit, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
