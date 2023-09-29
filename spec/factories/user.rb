FactoryBot.define do
  factory :user do
    # Define factory attributes here
    email { 'user@example.com' }
    password { 'password' }
  end
end
