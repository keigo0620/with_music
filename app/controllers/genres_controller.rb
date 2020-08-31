class GenresController < ApplicationController


def genre_params
	params.require(:genre).permit(:category)
end
end
