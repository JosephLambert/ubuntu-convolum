Rails.application.routes.draw do
    mount Ckeditor::Engine => '/ckeditor'

    devise_for :users, controllers: {
        sessions: 'users/sessions'
    }
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :posts

    namespace :admin do
        resources :posts do
            member do
                post :publish
                post :hide
                patch :move_up
                patch :move_down
            end
        end
        resources :products do
            member do
                post :publish
                post :hide
                patch :move_up
                patch :move_down
            end
        end
        resources :orders do
            member do
                post :cancel
                post :ship
                post :shipped
                post :return
                patch :move_up
                patch :move_down
            end
        end
        resources :messages
        resources :intros
        resources :videos
    end

    root 'welcome#index'

    resources :products do
        collection do
            get :search
        end
        member do
            post :add_to_cart
            post :instant_buy
        end
    end

    namespace :warehouse do
        resources :products
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

    namespace :plansintroduction do
        resources :posts do
            member do
                put 'like', to: 'posts#upvote'
            end
        end
    end

    namespace :wirelessinfo do
        resources :posts
        get 'afterindex', to: 'posts#afterindex'
    end

    namespace :netinfo do
        resources :posts
        get 'afterindex', to: 'posts#afterindex'
    end

    resources :messages

    get 'yunguanli', to: 'yunguanli#index'
end
