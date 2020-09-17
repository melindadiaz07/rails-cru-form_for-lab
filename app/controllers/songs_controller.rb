class SongsController < ApplicationController

    def index
        @songs = Song.all 
    end

    def show
        id = params[:id]
        @song = Song.find(id)
    end
    
end
