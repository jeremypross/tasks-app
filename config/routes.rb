Rails.application.routes.draw do

  resources :tasks

end


# resources :tasks negates need to manually write out routing
    # specifying routes is considered bad practice in rails
