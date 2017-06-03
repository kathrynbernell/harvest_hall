class Fruit < ApplicationRecord
has_many :fruit_farmers, :dependent => :destroy
has_many :farmers, :through => :fruit_farmers, :source => :farmer



end
