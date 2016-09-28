class Entry < ApplicationRecord
  belongs_to :user

  validates :date, presence: true
  validates_numericality_of :weight, less_than: 500, message: 'must be less than 500'

end
