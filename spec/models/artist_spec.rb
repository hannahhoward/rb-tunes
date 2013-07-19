require 'spec_helper'

describe Artist do

  let :artist do FactoryGirl.create(:artist) end

  it "should have a name" do
    artist.name.should_not be_nil
  end

  it "should associate albums" do
    (1..3).to_a.map do |n|
      FactoryGirl.create(:album, :artist_id => artist.id)
    end
    artist.reload
    artist.albums.count.should == 3
    artist.albums.first.name.should_not be_nil
  end

  it "should associate songs" do
    (1..3).to_a.map do |n|
      FactoryGirl.create(:song, :artist_id => artist.id)
    end
    artist.reload
    artist.songs.count.should == 3
    artist.songs.first.title.should_not be_nil
  end

end
