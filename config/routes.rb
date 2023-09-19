Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :recipes, only: %I[index show create update destroy]
    end
  end

end
