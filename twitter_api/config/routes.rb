Rails.application.routes.draw do
  get '/tweets/home' => 'tweets#home', as: :tweets_home
  get '/hashtags/top' => 'hashtags#top', as: :hashtags_top
  get '/tweets/search/:hashtag' => 'tweets#search'
  post '/tweets' => 'tweets#create'
end
