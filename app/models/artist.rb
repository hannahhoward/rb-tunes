class Artist < ActiveRecord::Base
  has_many :albums
  has_many :songs

  attr_accessible :genre, :name
end
