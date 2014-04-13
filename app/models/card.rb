class Card < ActiveRecord::Base
  has_one :shortlink, :dependent => :destroy
end
