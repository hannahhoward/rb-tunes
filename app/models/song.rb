class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :album

  attr_accessible :title, :artist_id, :song_id
end
