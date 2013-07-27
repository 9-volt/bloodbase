# == Schema Information
#
# Table name: blood_requests
#
#  id                 :integer          not null, primary key
#  person_name        :string(255)
#  email              :string(255)
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
#  issuer_name        :string(255)
#

class BloodRequest < ActiveRecord::Base
  if Rails.env.production?
    has_attached_file :photo, :storage => :fog,
      :path => "images/:class/:id/:attachment/:style/img_:fingerprint",
      :fog_credentials => {
        :provider           => 'Rackspace',
        :rackspace_username => 'minivan',
        :rackspace_api_key  => '377dc45c04eb687c7646b9ed4efd2812'
      },
      :fog_directory => 'donezsange.eu',
      :fog_public => true
  else
    has_attached_file :photo
  end

  has_many :donations
  has_many :donors, :through => :donations, :source => :user
  has_one :shortlink

  validates_presence_of :person_name, :description, :email

  def percent_complete
    a = donations.count
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
