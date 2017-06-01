Rails.application.routes.draw do
  resources :projects
  resources :tasks do 
  	collection do 
  	  get :preview
  	end
  end
  # devise_for :users
  devise_for :users, controllers: {
  		registrations: 'users/registrations',
        sessions: 'users/sessions'
      }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  # mount RuCaptcha::Engine => "/rucaptcha"
end
