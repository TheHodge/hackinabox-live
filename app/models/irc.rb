# == Schema Information
# Schema version: 20110715143653
#
# Table name: ircs
#
#  id         :integer         not null, primary key
#  by         :string(255)
#  message    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Irc < ActiveRecord::Base
end
