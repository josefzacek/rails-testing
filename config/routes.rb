Rails.application.routes.draw do
  resources :contact_us_messages,
            only: [:new, :create],
            path: 'contact-us', path_names: { new: '' }

  get 'animals/index'

  resources :movies

  resources :polls

  get 'people/index'

  match 'form/contact' => 'form#contact', via: [:get, :post]

  get 'urls/url_get_params/:month/:day' => 'urls#url_get_params', as: :url

  # get 'sections/show' #, path: 'commentaries/sections'

  resources :sections

  resources :commentaries

  get 'posts/post_show'
  get 'posts/show_users_posts'

  resources :posts

  get 'user/show'

  get 'pages/home'

  get 'pages/about_us'

  get 'pages/contact_us', path: 'cars/contact-taxworld-ireland'
  post 'pages/contact_us', path: 'cars/contact-taxworld-ireland'

  get 'pages/calendar'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#home'

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
