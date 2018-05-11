Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  namespace 'api' do
    namespace 'v1' do
      jsonapi_resources :articles, only: [:index, :show] do
        jsonapi_relationships only: :show
      end
    end
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
