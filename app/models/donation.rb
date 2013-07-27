# == Schema Information
#
# Table name: donations
#
#  id               :integer          not null, primary key
#  blood_request_id :integer
#  user_id          :integer
#  created_at       :datetime
#  updated_at       :datetime
#  full_name        :string(255)
#  gender           :string(255)
#  birthdate        :datetime
#  blood_group      :string(255)
#  blood_rh         :string(255)
#  phone            :string(255)
#  email            :string(255)
#  id_number        :string(255)
#  donate_at        :datetime
#

class Donation < ActiveRecord::Base
  belongs_to :user
  belongs_to :blood_request
end
