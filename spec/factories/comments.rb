FactoryBot.define do
  factory :comment do
    reply { "MyText" }
    post 
    user
  end
end
