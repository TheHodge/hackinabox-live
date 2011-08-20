# == Schema Information
# Schema version: 20110731131045
#
# Table name: tweets
#
#  id         :integer         not null, primary key
#  username   :string(255)
#  body       :string(255)
#  avatar_url :string(255)
#  status_id  :integer
#  created_at :datetime
#  updated_at :datetime
#  tweeted_at :datetime
#

class Tweet < ActiveRecord::Base
  
end
