class BloodRequest < ActiveRecord::Base
  has_attached_file :photo
  has_many :donations
  has_many :donors, :through => :donations, :source => :user
end
