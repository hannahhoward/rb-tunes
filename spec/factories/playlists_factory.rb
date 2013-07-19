FactoryGirl.define do
  factory :playlist do
    sequence :name do |n| "Playlist ##{n}" end
  end
end