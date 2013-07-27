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
#  hospital           :string(255)
#  section            :string(255)
#  persons_required   :integer
#

class BloodRequest < ActiveRecord::Base
  has_attached_file :photo
  has_many :donations
  has_many :donors, :through => :donations, :source => :user
  has_one :shortlink

  validates_presence_of :person_name, :description, :contacts

  def percent_complete
    a = donors.count
    b = persons_required

    return 100 if a > b
    (a.to_f / b) * 100
  end

  def shortlink
    super || build_shortlink
  end

  def link
    "/case/#{shortlink.code}"
  end
end
