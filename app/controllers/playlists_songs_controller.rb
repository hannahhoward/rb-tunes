class PlaylistsSongsController < ApplicationController

  def create
    @song = Song.find(params[:song_id])
    @playlist = Playlist.find(params[:playlist_id])
    @playlist.songs << @song
    @playlist.save

    respond_to do |format|
      format.html { redirect_to playlist_url(@playlist) }
      format.json { head :no_content }
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @playlist = Playlist.find(params[:playlist_id])
    @playlist.songs.delete(@song)

    respond_to do |format|
      format.html { redirect_to playlist_url(@playlist) }
      format.json { head :no_content }
    end
  end
end
