class GenresController < ApplicationController

    def index
        @genres = Genre.all

    end 


    def show 
        id = params[:id]
        @genre = Genre.find(id)
    end 
end
