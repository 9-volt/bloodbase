# == Schema Information
#
# Table name: donations
#
#  id               :integer          not null, primary key
#  blood_request_id :integer
#  user_id          :integer
#  created_at       :datetime
#  updated_at       :datetime
#

class Donation < ActiveRecord::Base
  belongs_to :user
  belongs_to :blood_request
end
