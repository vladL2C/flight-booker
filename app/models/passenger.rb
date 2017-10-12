class Passenger < ApplicationRecord
  belongs_to :booking
  validates_presence_of :booking
  validates :name, presence: true
  validates :email, presence: true
end
