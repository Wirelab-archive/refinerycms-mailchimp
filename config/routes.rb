Refinery::Core::Engine.routes.draw do
  namespace :mailchimp, :path => '' do
    # Admin routes
    namespace :admin, :path => 'refinery' do
      resources :campaigns do
        member do
          get :send_options
          post :send_test
          post :send_now
          post :schedule
          post :unschedule
        end
      end
      
      resources :settings do
        collection do
          get :general_settings
          post :general_settings
        end
      end
    end

    # Frontend routes
    resource :subscriptions, :only => :create

  end
end
