FactoryBot.define do
  factory :vote do
    votable_id { 1 }
    votable_type { "MyString" }
    user { nil }
    vote_status { 1 }
  end
end
