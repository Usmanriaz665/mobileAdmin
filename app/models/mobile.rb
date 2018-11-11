class Mobile < ApplicationRecord
    has_many :orders
    has_many :accessories
end
