ActionController::Routing::Routes.draw do |map|
  map.resources :announcement_types
  map.resources :announcements
  map.resources :users
  map.resource :session
  map.resources :backups
  map.resources :log_entries
  map.resources :reports
  map.resources :inspections
  map.resources :audits
  map.resources :groups
  map.resources :election_decision_criterias
  map.resources :elections
  map.resources :ballots
  map.resources :candidates
  map.resources :issues
  map.resources :prefs
  map.resources :posts
  map.resources :topics
  map.resources :votes
  map.resources :logagents
  map.resources :sysadmins
  map.resources :reporters
  map.resources :auditors
  map.resources :executives
  map.resources :addresses
  map.resources :voters, :member => { :dashboard => :get }

  # named routes added by JLM 
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.activate '/activate/:activation_code', :controller => 'users', :action => 'activate', :activation_code => nil
  map.change_password '/change_password', :controller => 'users', :action => 'change_password'
  map.home '', :controller => 'home', :action => 'index'
  map.connect '', :controller => 'home', :action => 'index'

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing the them or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
