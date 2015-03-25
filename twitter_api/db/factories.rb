require 'factory_girl'
require 'faker'

FactoryGirl.define do
  factory :user do
    username { Faker::Internet.user_name }
  end




  factory :tweet do
    body { Faker::Hacker.say_something_smart }
  end

  factory :hashtag do
    tag { Faker::Hacker.adjective }
  end

  
end