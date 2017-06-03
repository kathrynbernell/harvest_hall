class Farmer < ApplicationRecord
  has_many :fruit_farmers, :dependent => :destroy
  has_many :fruits, :through => :fruit_farmers, :source => :fruit
end
