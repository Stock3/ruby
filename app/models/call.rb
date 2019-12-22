class Call < ApplicationRecord
  belongs_to :source_number, :foreign_key => 'source_number_id', class_name: 'Number'
  belongs_to :target_number, :foreign_key => 'target_number_id', class_name: 'Number'

  validates :call_length, :presence => true,
            :numericality => true
  validates :time, :presence => true
end
