class CreateJoinTableHashtagTweet < ActiveRecord::Migration
  def change
    create_join_table :hashtags, :tweets do |t|
      t.references :tweet, index: true
      t.references :hashtag, index: true
    end
  end
end
