require 'spec_helper'

describe Album do
  let :album do FactoryGirl.create(:complete_album) end

  it "should have a name" do
    album.name.should_not be_nil
  end

  it "should have an artist" do
    album.artist.name.should_not be_nil
  end

  it "should associate songs" do
    (1..3).to_a.map do |n|
      FactoryGirl.create(:song, :album_id => album.id)
    end
    album.reload
    album.songs.count.should == 3
    album.songs.first.title.should_not be_nil
  end

end
