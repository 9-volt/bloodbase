class BloodRequest < Card
  has_attached_file :photo

  has_many :donations, :dependent => :destroy
  has_many :donors, :through => :donations, :source => :user

  validates_presence_of :person_name, :description, :email, :persons_required

  default_scope { where(visible: true, archived: false) }
  scope :archived,   -> { where(archived: true) }
  scope :approved,   -> { where(visible: true, archived: false) }
  scope :unapproved, -> { where(visible: false, archived: false) }

  def photo_url
    photo.url(photo.default_style, {:escape => false})
  end

  def subject
    "Mai e nevoie de #{persons_required - donations.count} din #{persons_required}"
  end

  def summary
    return description if description.size <= 70
    words = description[0..65].split[0..-2].join(' ')
    "#{words}..."
  end

  def percent_complete
    a = donations.count
    b = persons_required

    return 0   if a.zero?
    return 100 if a > b
    (a.to_f / b) * 100
  end

  def shortlink
    super || create_shortlink
  end

  def link
    "/case/#{shortlink.code}"
  end

  def approve!
    update_attributes!(:visible => true, :archived => false)
  end

  def disapprove!
    update_attributes!(:visible => false)
  end

  def archive!
    update_attributes!(:archived => true, :visible => false)
  end

  def unarchive!
    update_attributes!(:archived => false)
  end
end
