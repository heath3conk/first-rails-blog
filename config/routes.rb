Rails.application.routes.draw do
  
  root 'posts#index'

  get 'posts' => 'posts#index'
  get 'posts/new' => 'posts#new', as: 'new_post'
  get 'posts/:id' => 'posts#show', as: 'post'
  get 'posts/:id/edit' => 'posts#edit', as: 'edit_post'
  patch 'posts/:id' => 'posts#update', as: 'patch_post'
  delete 'posts/:id' => 'posts#destroy'
  post 'posts' => 'posts#create'
end
