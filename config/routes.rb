Rails.application.routes.draw do
  #devise_for :users, controllers: { sessions: 'users/sessions' }
   #devise_for :users, controllers: { sessions: 'users/sessions' }
  devise_for :users, controllers: { registrations: 'users/registrations',sessions: 'users/sessions' }
  get 'create_party', to: 'parties#create_party'
  get 'index', to: 'welcome#index'
  devise_scope :user do
    root to: "users/sessions#new"
  end
  resources :admin 
  resources :reviewers
  get 'users_list', to: 'admin#users_list'
  get 'reviewer_option', to: 'admin#reviewer_option' 
  resources :parties
  get 'my_parties', to: 'parties#my_parties'
  get 'create_reviewer', to: 'admin#create_reviewer'
   #post 'login', to: 'users#login'
  #devise_for :users, controllers: {registrations: 'users/registrations'}
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  #root to: 'users#new'
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end