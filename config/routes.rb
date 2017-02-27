Rails.application.routes.draw do
    root 'welcome#index'

    devise_for :users

    namespace :admin do
      resources :products
      resources :categories
    end

    namespace :account do
        resources :orders
    end

    resources :products do
        resources :reviews
        member do
            post :add_to_cart
        end
        collection do
            get :search
        end
    end

    resources :carts do
        collection do
            delete :clean
            post :checkout
        end
    end

      resources :orders do
        member do
          post :pay_with_alipay
          post :pay_with_wechat
        end
      end
    resources :cart_items

end
