FactoryGirl.define do
  factory :item do
    description {"素敵な#{name}です。"}
    price 1000
    image_url {"http://example.com/images/items/#{id}.png"}
  end
end
