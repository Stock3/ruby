class City < ApplicationRecord
  validates :name, :presence => true,
            :length => {minimum: 1, maximum: 80}

  has_many :customers
end
