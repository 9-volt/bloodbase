class BloodRequest < ActiveRecord::Base
  has_attached_file :photo

  has_one  :shortlink, :dependent => :destroy
  has_many :donations, :dependent => :destroy
  has_many :donors, :through => :donations, :source => :user

  validates_presence_of :person_name, :description, :email, :persons_required

  default_scope { where(visible: true) }
  scope :approved,   -> { where(visible: true) }
  scope :unapproved, -> { where(visible: false) }

  def photo_url
    photo.url(photo.default_style, {:escape => false})
  end

  def summary
    return description if description.size <= 70
    words = description[0..65].split[0..-2].join(' ')
    "#{words}..."
  end

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

  def approve!
    update_attributes!(:visible => true)
  end

  def disapprove!
    update_attributes!(:visible => false)
  end
end
