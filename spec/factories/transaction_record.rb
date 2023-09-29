FactoryBot.define do
  factory :transaction_record do
    name { 'Example Transaction' }
    amount { 100 }
    category { association(:category) } # Assuming you have a Category factory
  end
end
