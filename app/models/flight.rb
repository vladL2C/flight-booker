class Flight < ApplicationRecord
  belongs_to :departing, :class_name => "Airport"
  belongs_to :arriving, :class_name => "Airport"

  def self.dates
    select(:date).order(:date).distinct
  end 

  def date_formatted
    date.strftime("%A, %b %d")
  end
end
