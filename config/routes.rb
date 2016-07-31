Rails.application.routes.draw do
  
  get 'task_index' => "home#task_index"

  post 'task_create' => "home#task_create"

  get 'task_new' => "home#task_new"

  get 'task_edit' => "home#task_edit"

  get 'task_destroy' => "home#task_destroy"

  get 'task_view/:task_id' => "home#task_view"

  root 'home#index'
  
  get '/index' => "home#index"
  
  get '/ppl_index' => "home#ppl_index"

  post '/ppl_create' => "home#ppl_create"

  get '/ppl_new' => "home#ppl_new"

  get '/ppl_edit' => "home#ppl_edit"

  get '/ppl_destroy'=> "home#ppl_destroy"  

  get '/ppl_view/:ppl_id' => "home#ppl_view"
  
  
  
  get '/board_index' => "home#board_index"

  post '/board_create' => "home#board_create"
  
  get '/board_new' => "home#board_new"

  get '/board_edit' => "home#board_edit"

  get '/board_destroy' => "home#board_destroy"
  
  get '/board_view/:board_id' => "home#board_view"
  
  post '/board_comment_create' => 'home#board_comment_create'

  devise_for :users
  

  get '/board_index' => 'home#board_index'
  get '/ppl_index' => 'home#ppl_index'
  get '/evets' => 'home#evets'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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