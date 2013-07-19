FactoryGirl.define do
  factory :album do
    sequence :name do |n| "Album ##{n}" end
    platinum true
    factory :complete_album do
        artist
    end
  end
end