class Order < ApplicationRecord
  belongs_to :accessories
  belongs_to :mobile
end
