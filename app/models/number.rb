class Number < ApplicationRecord

  def display_name
    number
  end

  validates :number,   :presence => {:message => 'Phone number is required.'},
            :numericality => true,
            :length => { :minimum => 10, :maximum => 15 }

  belongs_to :customer
  belongs_to :plan

  has_many :in_calls, class_name: 'Call', :foreign_key => 'source_number_id'
  has_many :out_calls, class_name: 'Call', :foreign_key => 'target_number_id'
end
