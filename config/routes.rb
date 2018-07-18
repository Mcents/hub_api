Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      namespace :reddit do
        get '/soccer', to: 'soccer#index'
        get '/hockey', to: 'hockey#index'
      end
    end
  end
end
