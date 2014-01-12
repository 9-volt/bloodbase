class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :donations
  has_many :donated_requests, :through => :donations,
                              :source  => :blood_request
end
