class AlbumsSongsController < ApplicationController

  def create
    @song = Song.find(params[:song_id])
    @album = Album.find(params[:album_id])
    @album.songs << @song
    @song.save

    respond_to do |format|
      format.html { redirect_to album_url(@album) }
      format.json { head :no_content }
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.album = nil
    @song.save
    @album = Album.find(params[:album_id])

    respond_to do |format|
      format.html { redirect_to album_url(@album) }
      format.json { head :no_content }
    end
  end
end
