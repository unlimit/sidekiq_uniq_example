require 'sidekiq_unique_jobs/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'
end
