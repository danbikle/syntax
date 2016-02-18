Rails.application.routes.draw do
  get 'beauty/index'

  #get 'scae/index'

  get 'hireme/index'
  get 'hireme'    => 'hireme#index'
  root 'posts#index'
  get 'posts'     => 'posts#index'
  get 'blog'      => 'posts#blog'
  get 'contact'   => 'posts#contact'
  get 'tags'      => 'posts#tags'
  get 'linux101'  => 'posts#linux101_cclud'
  get 'questions' => 'questions#index'
  get 'tags(/:tag)' => 'tags#tag'
  get ':controller(/:action)'
end
