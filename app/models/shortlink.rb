class Shortlink < ActiveRecord::Base
  belongs_to :blood_request
  validates_presence_of :blood_request

  before_create :generate_code

  private

    def generate_code
      self.code = ShortHasher.encrypt(blood_request.id)
    end
end
