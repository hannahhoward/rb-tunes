FactoryGirl.define do
  factory :artist do
    sequence :name do |n| "Artist ##{n}" end
    sequence :genre do |n| "Genre ##{n}" end
  end
end