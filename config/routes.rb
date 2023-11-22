Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope :api do

    devise_for :admin_users, ActiveAdmin::Devise.config
    ActiveAdmin.routes(self)

    get '/articles', to: 'articles#index'

    post '/presigned_url', to: 'direct_upload#create'

    post '/clients', to: 'clients#create'

    get '/download', to: 'pdfs#download'

  end

end
