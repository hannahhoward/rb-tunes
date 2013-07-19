require 'spec_helper'

describe "albums/edit" do
  before(:each) do
    @album = assign(:album, stub_model(Album,
      :name => "MyString",
      :platinum => false
    ))
    @artists = assign(:artists, [stub_model(Artist,
      :name => "Prince",
      :genre => "Genre")])
  end

  it "renders the edit album form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", album_path(@album), "post" do
      assert_select "input#album_name[name=?]", "album[name]"
      assert_select "input#album_platinum[name=?]", "album[platinum]"
    end
  end
end
