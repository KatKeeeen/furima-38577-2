FactoryBot.define do
  factory :user do
    nickname {Faker::Name.name}
    email {Faker::Internet.free_email}
    password {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    family_name {Faker::Japanese::Name.last_name}
    first_name {Faker::Japanese::Name.first_name}
    family_name_kana {family_name.yomi}
    first_name_kana {first_name.yomi}
    birth_day {Faker::Date.birthday(min_age: 18, max_age: 65)}
  end
end