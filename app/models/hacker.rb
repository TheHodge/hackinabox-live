# == Schema Information
# Schema version: 20110802002933
#
# Table name: hackers
#
#  id                  :integer         not null, primary key
#  email               :string(255)     not null
#  name                :string(255)
#  crypted_password    :string(255)     not null
#  password_salt       :string(255)     not null
#  persistence_token   :string(255)     not null
#  perishable_token    :string(255)     not null
#  current_login_at    :datetime
#  last_login_at       :datetime
#  created_at          :datetime
#  updated_at          :datetime
#  food_id             :integer
#  description         :text
#  admin               :boolean
#  single_access_token :string(255)
#

class Hacker < ActiveRecord::Base
    has_and_belongs_to_many :teams
    has_many :commits, :foreign_key => "user_id"
  
end
