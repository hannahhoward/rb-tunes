FactoryGirl.define do
  factory :song do
    sequence :title do |n| "Song ##{n}" end
    factory :complete_song do
        artist
        album
    end
  end
end