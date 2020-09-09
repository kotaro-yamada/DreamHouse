Rails.application.routes.draw do
  root 'homes#top'
  devise_for :buyers
  devise_for :sellers

  namespace :buyer do
    get 'homes/top' => 'homes#top', as: 'top'
    get 'searches/search' => 'searches#search', as: 'search'
    resource :buyers, only: [:show, :edit, :update]
    resources :visit_offers, only: [:index, :show, :new, :create, :update, :destroy] 
    resources :houses, only: [:index, :show] do
    resource :purchase_offers, only: [:show, :new, :create, :destroy] do
      post 'confirm' => 'purchase_offers#confirm', as: 'confirm'
      get 'receive' => 'purchase_offers#receive', as: 'receieve'
    end
   end
  end
  
  namespace :seller do
    get 'homes/top' => 'homes#top', as: 'top'
    get 'homes/preparation' => 'homes#preparation', as: 'preparation'
    get 'homes/safety' => 'homes#safety', as: 'safety'
    get 'homes/settlement' => 'homes#settlement', as: 'settlement'
    resource :sellers, only: [:show, :edit, :update]
    resources :houses
    resources :visit_offers, only: [:index, :show]
    resources :purchase_offers, only: [:index, :show]
    resources :photos, only: [:create, :destroy]
  end

end
=begin     
                              Prefix Verb   URI Pattern                                                                              Controller#Action
                                root GET    /                                                                                        homes#top
                   new_buyer_session GET    /buyers/sign_in(.:format)                                                                devise/sessions#new
                       buyer_session POST   /buyers/sign_in(.:format)                                                                devise/sessions#create
               destroy_buyer_session DELETE /buyers/sign_out(.:format)                                                               devise/sessions#destroy
                  new_buyer_password GET    /buyers/password/new(.:format)                                                           devise/passwords#new
                 edit_buyer_password GET    /buyers/password/edit(.:format)                                                          devise/passwords#edit
                      buyer_password PATCH  /buyers/password(.:format)                                                               devise/passwords#update
                                     PUT    /buyers/password(.:format)                                                               devise/passwords#update
                                     POST   /buyers/password(.:format)                                                               devise/passwords#create
           cancel_buyer_registration GET    /buyers/cancel(.:format)                                                                 devise/registrations#cancel
              new_buyer_registration GET    /buyers/sign_up(.:format)                                                                devise/registrations#new
             edit_buyer_registration GET    /buyers/edit(.:format)                                                                   devise/registrations#edit
                  buyer_registration PATCH  /buyers(.:format)                                                                        devise/registrations#update
                                     PUT    /buyers(.:format)                                                                        devise/registrations#update
                                     DELETE /buyers(.:format)                                                                        devise/registrations#destroy
                                     POST   /buyers(.:format)                                                                        devise/registrations#create
                  new_seller_session GET    /sellers/sign_in(.:format)                                                               devise/sessions#new
                      seller_session POST   /sellers/sign_in(.:format)                                                               devise/sessions#create
              destroy_seller_session DELETE /sellers/sign_out(.:format)                                                              devise/sessions#destroy
                 new_seller_password GET    /sellers/password/new(.:format)                                                          devise/passwords#new
                edit_seller_password GET    /sellers/password/edit(.:format)                                                         devise/passwords#edit
                     seller_password PATCH  /sellers/password(.:format)                                                              devise/passwords#update
                                     PUT    /sellers/password(.:format)                                                              devise/passwords#update
                                     POST   /sellers/password(.:format)                                                              devise/passwords#create
          cancel_seller_registration GET    /sellers/cancel(.:format)                                                                devise/registrations#cancel
             new_seller_registration GET    /sellers/sign_up(.:format)                                                               devise/registrations#new
            edit_seller_registration GET    /sellers/edit(.:format)                                                                  devise/registrations#edit
                 seller_registration PATCH  /sellers(.:format)                                                                       devise/registrations#update
                                     PUT    /sellers(.:format)                                                                       devise/registrations#update
                                     DELETE /sellers(.:format)                                                                       devise/registrations#destroy
                                     POST   /sellers(.:format)                                                                       devise/registrations#create
                           buyer_top GET    /buyer/homes/top(.:format)                                                               buyer/homes#top
                        buyer_search GET    /buyer/searches/search(.:format)                                                         buyer/searches#search
                   edit_buyer_buyers GET    /buyer/buyers/edit(.:format)                                                             buyer/buyers#edit
                        buyer_buyers GET    /buyer/buyers(.:format)                                                                  buyer/buyers#show
                                     PATCH  /buyer/buyers(.:format)                                                                  buyer/buyers#update
                                     PUT    /buyer/buyers(.:format)                                                                  buyer/buyers#update
                  buyer_visit_offers GET    /buyer/visit_offers(.:format)                                                            buyer/visit_offers#index
                                     POST   /buyer/visit_offers(.:format)                                                            buyer/visit_offers#create
               new_buyer_visit_offer GET    /buyer/visit_offers/new(.:format)                                                        buyer/visit_offers#new
                   buyer_visit_offer GET    /buyer/visit_offers/:id(.:format)                                                        buyer/visit_offers#show
                                     PATCH  /buyer/visit_offers/:id(.:format)                                                        buyer/visit_offers#update
                                     PUT    /buyer/visit_offers/:id(.:format)                                                        buyer/visit_offers#update
                                     DELETE /buyer/visit_offers/:id(.:format)                                                        buyer/visit_offers#destroy
 confirm_buyer_house_purchase_offers POST   /buyer/houses/:house_id/purchase_offers/confirm(.:format)                                buyer/purchase_offers#confirm
receieve_buyer_house_purchase_offers GET    /buyer/houses/:house_id/purchase_offers/receive(.:format)                                buyer/purchase_offers#receive
     new_buyer_house_purchase_offers GET    /buyer/houses/:house_id/purchase_offers/new(.:format)                                    buyer/purchase_offers#new
         buyer_house_purchase_offers GET    /buyer/houses/:house_id/purchase_offers(.:format)                                        buyer/purchase_offers#show
                                     DELETE /buyer/houses/:house_id/purchase_offers(.:format)                                        buyer/purchase_offers#destroy
                                     POST   /buyer/houses/:house_id/purchase_offers(.:format)                                        buyer/purchase_offers#create
                        buyer_houses GET    /buyer/houses(.:format)                                                                  buyer/houses#index
                         buyer_house GET    /buyer/houses/:id(.:format)                                                              buyer/houses#show
                          seller_top GET    /seller/homes/top(.:format)                                                              seller/homes#top
                  seller_preparation GET    /seller/homes/preparation(.:format)                                                      seller/homes#preparation
                       seller_safety GET    /seller/homes/safety(.:format)                                                           seller/homes#safety
                   seller_settlement GET    /seller/homes/settlement(.:format)                                                       seller/homes#settlement
                 edit_seller_sellers GET    /seller/sellers/edit(.:format)                                                           seller/sellers#edit
                      seller_sellers GET    /seller/sellers(.:format)                                                                seller/sellers#show
                                     PATCH  /seller/sellers(.:format)                                                                seller/sellers#update
                                     PUT    /seller/sellers(.:format)                                                                seller/sellers#update
                       seller_houses GET    /seller/houses(.:format)                                                                 seller/houses#index
                                     POST   /seller/houses(.:format)                                                                 seller/houses#create
                    new_seller_house GET    /seller/houses/new(.:format)                                                             seller/houses#new
                   edit_seller_house GET    /seller/houses/:id/edit(.:format)                                                        seller/houses#edit
                        seller_house GET    /seller/houses/:id(.:format)                                                             seller/houses#show
                                     PATCH  /seller/houses/:id(.:format)                                                             seller/houses#update
                                     PUT    /seller/houses/:id(.:format)                                                             seller/houses#update
                                     DELETE /seller/houses/:id(.:format)                                                             seller/houses#destroy
                 seller_visit_offers GET    /seller/visit_offers(.:format)                                                           seller/visit_offers#index
                  seller_visit_offer GET    /seller/visit_offers/:id(.:format)                                                       seller/visit_offers#show
              seller_purchase_offers GET    /seller/purchase_offers(.:format)                                                        seller/purchase_offers#index
               seller_purchase_offer GET    /seller/purchase_offers/:id(.:format)                                                    seller/purchase_offers#show
                       seller_photos POST   /seller/photos(.:format)                                                                 seller/photos#create
                        seller_photo DELETE /seller/photos/:id(.:format)                                                             seller/photos#destroy
                          refile_app        /attachments                                                                             #<Refile::App app_file="/home/vagrant/.rbenv/versions/2.5.7/lib/ruby/gems/2.5.0/bundler/gems/refile-46b4178654e6/lib/refile/app.rb">
                  rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
           rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
                  rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
           update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
                rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
=end