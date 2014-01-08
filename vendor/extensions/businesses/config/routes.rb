Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :businesses do
    resources :businesses, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :businesses, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :businesses, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
