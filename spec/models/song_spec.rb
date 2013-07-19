require 'spec_helper'

describe Song do
  let :song do FactoryGirl.create(:complete_song) end

  it "should have a title" do
    song.title.should_not be_nil
  end

  it "should have an album" do
    song.album.name.should_not be_nil
  end

  it "should have an artist" do
    song.artist.name.should_not be_nil
  end

end
