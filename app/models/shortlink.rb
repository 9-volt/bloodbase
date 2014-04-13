class Shortlink < ActiveRecord::Base
  belongs_to :card
  validates_presence_of :card

  before_create :generate_code

private

  def generate_code
    self.code = ShortHasher.encrypt(card.id)
  end
end
