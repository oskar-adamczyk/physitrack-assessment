# What's wrong with this piece of code? 
# List everything you would do differently (and why).

class Posts < ActiveRecord::Base 
  scope :added_recently, where("created_at <= #{Date.today - 3.days}") 
end