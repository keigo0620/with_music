class LocationsController < ApplicationController

def location_params
	params.require(:location).permit(:seen)
end

