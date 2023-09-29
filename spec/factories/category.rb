FactoryBot.define do
  factory :category do
    name { 'Example Category' }
    user { association(:user) } # Assuming you have a User factory
  end
end
