class TweetsController < ApplicationController
  def home
  	@tweets = Tweet.all.order(created_at: :desc).limit(50)
  	@users = User.all
  	# render json: {tweets: @tweets, users: @users, hashtags: @hashtags}
  end

  def create
		@tags = params[:hashtags]
		@tweet = Tweet.new(tweet: params[:tweet], user_id: @user.id)
		@tags.each do |tag|
			@tag = Hashtag.create(tag: tag)
			@tag.tweets << @tweet
			@tweet.save
			@tag.save
		end
		@tweet.save
		render json: {tweet: @tweet, user: @user}
  end

  def search
  end
end
