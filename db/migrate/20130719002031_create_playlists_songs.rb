class CreatePlaylistsSongs < ActiveRecord::Migration
  def change
    create_table :playlists_songs do |t|
      t.integer :playlist_id
      t.integer :song_id
    end
  end
end
