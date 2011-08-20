# == Schema Information
# Schema version: 20110802002933
#
# Table name: teams
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  permalink   :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  description :text
#  created_by  :integer
#

class Team < ActiveRecord::Base
   has_and_belongs_to_many :hackers
   
   attr_accessible :name, :permalink, :description
   
   scope :commits, joins(:hackers).includes(:commits)
   
   def to_param
     permalink
   end
   
end
