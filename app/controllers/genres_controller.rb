class GenresController < ApplicationController

end
def genre_params
	params.require(:genre).permit(:category)
end
end
