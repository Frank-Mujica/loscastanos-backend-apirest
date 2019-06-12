Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope 'api/v1' do
    mount_devise_token_auth_for 'User', at: 'auth'
    resources :lupulos
    resources :users
    get 'me', :to => 'users#me'
  end
end
