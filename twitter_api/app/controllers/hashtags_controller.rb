class HashtagsController < ApplicationController
	def top
		@hashtags = Hashtag.group(:tag).order('count_id DESC').limit(10).count(:id)
	end
end