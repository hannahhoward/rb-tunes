require 'spec_helper'

describe Playlist do

  let :playlist do FactoryGirl.create(:playlist) end

  it "should have a name" do
    playlist.name.should_not be_nil
  end

  it "should associate songs" do
    (1..3).to_a.map do |n|
      song = FactoryGirl.create(:song)
      song.playlists << playlist
      song.save
    end

    playlist.songs.count.should == 3
    playlist.songs.first.title.should_not be_nil
  end

end