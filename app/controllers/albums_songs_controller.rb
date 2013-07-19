class AlbumsSongsController < ApplicationController

  def create
    @song = ## **** FILL ME IN ****
    @album = ## **** FILL ME IN ****
    @album.songs << @song
    @song.save

    respond_to do |format|
      format.html { redirect_to album_url(@album) }
      format.json { head :no_content }
    end
  end

  def destroy
    @song = ## **** FILL ME IN ****
    @song.album = nil
    @song.save
    @album = ## **** FILL ME IN ****

    respond_to do |format|
      format.html { redirect_to album_url(@album) }
      format.json { head :no_content }
    end
  end
end
