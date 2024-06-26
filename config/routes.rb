Rails.application.routes.draw do
  root to: 'homes#top'
  resources :inquiries, only: [:new, :create]
  get "/inquiries/done", to: "inquiries#done"

  # 社員
  devise_for :employees,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  # 管理者
  devise_for :admin,skip: [:passwords], controllers: {
    registrations: "admin/registrations",
    sessions: "admin/sessions"
  }

  # ゲストログイン
  devise_scope :employee do
    post "employees/guest_sign_in", to: "public/sessions#guest_sign_in"
  end

  # 社員
  scope module: :public do
    resources :genres, only: [:index,:show]
    resources :addresses, only: [:index,:show]
    resources :items, only: [:index]
    resources :works, only: [:index,:show] do
      resources :work_comments, only:[:create,:destroy]
    end
    patch "works/:id/status" => "works#status", as: 'works_status'
    resources :employees, only:[:index,:show,:edit,:update]
    resources :progresses, only:[:index]
    get "/searches", to: "searches#search"
    resources :inquiries, only: [:index, :show]
  end

  # 管理者
  namespace :admin do
    resources :genres, only: [:index,:show,:edit,:create,:update, :destroy]
    resources :addresses, only: [:index,:show,:new,:edit,:create,:update,:destroy]
    resources :items, only: [:index,:edit,:create,:update,:destroy]
    resources :works, only: [:index,:show,:new,:create,:edit,:update,:destroy] do
      resources :work_comments, only:[:destroy]
    end
    patch "works/:id/status" => "works#status", as: 'works_status'
    resources :employees, only:[:index,:show,:edit,:update,:destroy]
    resources :progresses, only:[:index]
    get "/searches", to: "searches#search"
    resources :inquiries, only: [:index, :show, :destroy]
    end

end
