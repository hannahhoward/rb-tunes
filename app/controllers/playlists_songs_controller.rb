class PlaylistsSongsController < ApplicationController

  def create
    @song = ## **** FILL ME IN ****
    @playlist = ## **** FILL ME IN ****
    @playlist.songs << @song
    @playlist.save

    respond_to do |format|
      format.html { redirect_to playlist_url(@playlist) }
      format.json { head :no_content }
    end
  end

  def destroy
    @song = ## **** FILL ME IN ****
    @playlist = ## **** FILL ME IN ****
    @playlist.songs.delete(@song)

    respond_to do |format|
      format.html { redirect_to playlist_url(@playlist) }
      format.json { head :no_content }
    end
  end
end
