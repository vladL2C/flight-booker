class Booking < ApplicationRecord
  belongs_to :flight 
  has_many :passengers
  validates :flight, presence: true
  validates :passengers, presence: true

  accepts_nested_attributes_for :passengers
end
