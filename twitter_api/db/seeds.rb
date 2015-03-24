require_relative 'factories'

10.times {
  user = FactoryGirl.create :user
	  rand(10).times {
	  	hashtag = FactoryGirl.create :hashtag
	    tweet = FactoryGirl.create :tweet, :user => user
	    hashtag.tweets << tweet
	  }
}