class SongsController < ApplicationController

    def index
        @songs = Song.all 
    end

    def show
        id = params[:id]
        @song = Song.find(id)
    end

    def new
        @song = Song.new 
    end
    
    def create 

        name = params[:song][:name]
        artist = Artist.find_or_create_by(name: (params[:song][:artist])).id
        genre = Genre.find_or_create_by(name: (params[:song][:genre])).id

        song = Song.create(name: name, artist_id: artist, genre_id: genre)

        redirect_to song_path(song)

    end 
end
