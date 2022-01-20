FactoryBot.define do
  factory :quiz_datum do
    founder_name { "MyString" }
    email { "MyString" }
    country { "MyString" }
    gender { "MyString" }
    race_of_founder { "MyString" }
    text_box { "MyText" }
    conscious_beauty_credentials { "MyString" }
    user { nil }
  end
end
