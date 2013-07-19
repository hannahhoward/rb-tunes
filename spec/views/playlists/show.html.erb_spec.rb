require 'spec_helper'

describe "playlists/show" do
  before(:each) do
    @playlist = assign(:playlist, stub_model(Playlist,
      :name => "Name"
    ))
    @potential_songs = assign(:potential_songs, [
      stub_model(Song,
        :title => "Name"
      ),
      stub_model(Artist,
        :title => "Name"
      )
    ])
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
