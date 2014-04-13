class Donation < ActiveRecord::Base
  belongs_to :user
  belongs_to :card

  after_create :generate_code

  private

    def generate_code
      self.code = ShortHasher.encrypt(self.id)
      save
    end
end
