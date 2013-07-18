module AlbumsHelper
  def is_platinum?(album)
    album.platinum ? "Yes" : "No"
  end

end
