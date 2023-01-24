FactoryBot.define do
  factory :user do
    nickname {Faker::Name.name}
    email {Faker::Internet.free_email}
    password {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    family_name { person.last.kanji }
    first_name { person.first.kanji }
    family_name_kana { person.last.katakana }
    first_name_kana { person.first.katakana }
  end
end