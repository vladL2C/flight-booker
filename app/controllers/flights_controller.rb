class FlightsController < ApplicationController
  
  def index
  	@passengers = [1,2,3,4]
    if params[:flight]
      @flights = Flight.where(departing_id: params[:flight][:departing_id],
                              arriving_id: params[:flight][:arriving_id])
      @departing = Airport.find(params[:flight][:departing_id])
      @arriving = Airport.find(params[:flight][:arriving_id]) 
    end   
  end 

end
