class Album < ActiveRecord::Base
  has_many :songs
  belongs_to :artist

  attr_accessible :name, :platinum, :artist_id
end
