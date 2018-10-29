Rails.application.routes.draw do
  get 'contacts/messages'
  get 'laws/lawsuit'
  get 'helps/entity'
  get 'remainings/cases'
  post 'contacts/messages'
  
  post 'auth/login', to: 'authentication#authenticate'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'signup', to: 'users#create'
  # post 'experiences', to: 'experiencies'
  resources 'experiences', only: [:index, :create, :edit]
end
