Rails.application.routes.draw do
  get 'posts'     => 'posts#index'
  get 'blog'      => 'posts#blog'
  get 'contact'   => 'posts#contact'
  get 'tags'      => 'posts#tags'
  get 'questions' => 'posts#questions'
  get ':controller(/:action(/:id))'
end
