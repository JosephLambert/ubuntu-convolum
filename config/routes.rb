Rails.application.routes.draw do
    mount Ckeditor::Engine => '/ckeditor'
    devise_for :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :posts

    namespace :admin do
        resources :posts do
            member do
                post :publish
                post :hide
            end
        end
        resources :products do
            member do
                post :publish
                post :hide
            end
        end
        resources :orders do
            member do
                post :cancel
                post :ship
                post :shipped
                post :return
            end
        end
    end

    root 'welcome#index'

    resources :products do
        collection do
            get :search
        end
        member do
            post :add_to_cart
        end
    end

    resources :carts do
        collection do
            delete :clean
            post :checkout
        end
    end

    resources :cart_items

    resources :orders do
        member do
            post :pay_with_alipay
            post :pay_with_wechat
            post :apply_to_cancel
        end
    end

    namespace :account do
        resources :orders
    end

    namespace :aboutus do
        resources :posts
    end

    namespace :plansintroduction do
        resources :posts
    end

    namespace :news do
        resources :posts
    end

    namespace :contactus do
        resources :posts
    end
end
