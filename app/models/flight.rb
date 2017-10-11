class Flight < ApplicationRecord
  belongs_to :departing, :class_name => "Airport"
  belongs_to :arriving, :class_name => "Airport"

  def self.date_list
    select(:date).order(:date).distinct
  end 

  def date_formatted
    date.strftime("%A, %b %d")
  end

  def duration_format
  	duration == 1 ? "#{self.duration}:00 hour" : "#{self.duration}:00 hours"
  end 


end
