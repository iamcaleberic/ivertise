Rails.application.routes.draw do
  get 'static/contact_us'

  #get 'static/terms_and_conditions'
  #get 'static/privacy_policy'

  get 'home/images'
  get 'home/models'
  get 'home/muas'
  get 'home/photographers'

  get 'images' => 'home#images', as: :images
  #get 'admin/index'

  devise_for :admins
  resources :messages
  resources :photos
  devise_for :users

  resources :photos
  root 'home#index'

  get 'contact_us' => 'static#contact_us', as: :contact
  get 'terms_and_conditions' => 'static#terms_and_conditions', as: :terms
  get 'privacy_policy' => 'static#privacy_policy', as: :privacy


  # mailbox folder routes
  get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
  get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
  get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash

  # conversations
  resources :conversations do    
    member do
      post :reply
      post :trash
      post :untrash
    end
  end
end
