class Customer < ApplicationRecord

  def display_name
    name + ' ' + surname
  end

  validates :name, :presence => true,
            :length => {minimum: 1, maximum: 20}

  validates :surname, :presence => true,
            :length => {minimum: 1, maximum: 30}

  has_many :numbers
  belongs_to :city
end
