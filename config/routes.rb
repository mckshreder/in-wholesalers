Rails.application.routes.draw do
  
    root'app#index'
  get 'app/index'
  get 'app/rsstest'
  get 'app/kids_baby_g'

  get 'housewares/index'
  
  get 'housewares/baskets_storage_racks'

  get 'housewares/cookware'

  get 'housewares/food_containers'

  get 'housewares/laundry'

  get 'housewares/tabletop_dining'

  get 'housewares/furniture'

  get 'housewares/cleaning_tools'

  get 'housewares/paper_foil_plastic'

  get 'housewares/house_chemicals'

  get 'housewares/licensed_housewares'

  get 'housewares/magnets_memo_holders'

  get 'housewares/package_deals'



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
