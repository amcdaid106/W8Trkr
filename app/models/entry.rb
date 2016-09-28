class Entry < ApplicationRecord
  belongs_to :user
  validates_numericality_of :weight, less_than: 500

end
