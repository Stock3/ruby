class Plan < ApplicationRecord
  has_many :numbers

  validates :name, :presence => {:message => 'Plan name is required.'},
            :length => { :minimum => 2, :maximum => 20 }

  validates :price, :presence => {:message => 'Price is required.'},
            :numericality => {:greater_than => 0}
end
