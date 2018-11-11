class Accessory < ApplicationRecord
  belongs_to :mobile
  has_many :orders
end
