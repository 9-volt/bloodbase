# == Schema Information
#
# Table name: blood_requests
#
#  id                 :integer          not null, primary key
#  person_name        :string(255)
#  contacts           :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  photo_file_name    :string(255)
#  photo_content_type :string(255)
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#  description        :text
#

class BloodRequest < ActiveRecord::Base
  has_attached_file :photo
  has_many :donations
  has_many :donoors, :through => :donations, :source => :user

  validates_presence_of :person_name, :description, :contacts
end
