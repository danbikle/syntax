Rails.application.routes.draw do
  root 'posts#index'
  get 'posts'     => 'posts#index'
  get 'blog'      => 'posts#blog'
  get 'contact'   => 'posts#contact'
  get 'tags'      => 'posts#tags'
  get 'questions' => 'questions#index'
  get 'tags(/:tag)' => 'tags#tag'
  get ':controller(/:action)'
end
