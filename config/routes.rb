SampleApp::Application.routes.draw do

  # get "static_pages/home"
  # match '/', to: 'static_pages#home'
    

    # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # root :to => 'static_pages#home'
  root to: 'static_pages#home'

  		# get "static_pages/help"
  match '/help', to: 'static_pages#help'
  		# get "static_pages/about"
  match '/about', to: 'static_pages#about'
  		# get "static_pages/contact"

   match '/contact', to: 'static_pages#contact'
end




