class FruitFarmer < ApplicationRecord
  belongs_to :fruit
  belongs_to :farmer
end
