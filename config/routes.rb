Rails.application.routes.draw do
  namespace :buyer do
    get 'buyers/show'
    get 'buyers/edit'
    get 'buyers/update'
  end
  namespace :buyer do
    get 'searches/search'
  end
  namespace :buyer do
    get 'visit_offers/show'
    get 'visit_offers/new'
    get 'visit_offers/create'
    get 'visit_offers/update'
    get 'visit_offers/destroy'
  end
  namespace :buyer do
    get 'purchase_offers/show'
    get 'purchase_offers/new'
    get 'purchase_offers/create'
    get 'purchase_offers/destroy'
  end
  namespace :seller do
    get 'houses/index'
    get 'houses/show'
    get 'houses/new'
    get 'houses/create'
    get 'houses/edit'
    get 'houses/update'
    get 'houses/destroy'
  end
  namespace :seller do
    get 'purchase_offers/index'
    get 'purchase_offers/show'
  end
  namespace :seller do
    get 'visit_offers/index'
    get 'visit_offers/show'
  end
  namespace :seller do
    get 'sellers/show'
    get 'sellers/edit'
    get 'sellers/update'
  end
  get 'show/edit'
  get 'show/update'
  namespace :seller do
    get 'homes/top' => 'homes#top', as: 'top'
    get 'homes/preparation' => 'homes#preparation', as: 'preparation'
    get 'homes/safety' => 'homes#safety', as: 'safety'
    get 'homes/settlement' => 'homes#settlement', as: 'setlement'
  end
  namespace :buyer do
    get 'houses/index'=> 'houses#index', as: 'houses'
    get 'houses/show'=> 'houses#show', as: 'house'
  end
  root 'homes#top'
  devise_for :buyers
  devise_for :sellers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

=begin
	
Prefix Verb   URI Pattern                                                                              Controller#Action
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
        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
 rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
 update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
[vagrant@localhost DreamHouse]$ 
	
=end
