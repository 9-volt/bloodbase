class Card < ActiveRecord::Base
  has_attached_file :photo

  has_many :donations, :dependent => :destroy
  has_many :donors, :through => :donations, :source => :user

  has_one :shortlink, :dependent => :destroy
end
