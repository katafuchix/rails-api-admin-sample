Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_for 'admin/users', controllers: {
    sessions: 'admin_users/sessions'
  }

  devise_scope 'admin/users' do
    get '/' => 'admin_users/sessions#new'
    get '/admin_users/sign_out' => 'admin_users/sessions#destroy'
  end

  namespace :admin do
    get '/' => 'categories#index'
    get 'index' => 'users#index'
    resources :admin_users, controller: :manage_roles

    resource :app_configs, only: %i(edit update)

    Master.master_routes.keys.each do |type|
      resources type, controller: :masters, type: type.classify
    end

    resources :categories
    resources :sub_categories
  end

  mount Versions::V1::Api => '/'
  mount GrapeSwaggerRails::Engine => '/api/swagger'

end
