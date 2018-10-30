Rails.application.routes.draw do
  get 'blogs/index'
  root 'blogs#index'
  resources :blogs, only:[:index, :new, :create, :edit, :destroy, :update] do
    collection do
      post :confirm
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
