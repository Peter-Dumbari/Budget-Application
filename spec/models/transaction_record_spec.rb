require 'rails_helper'

RSpec.describe TransactionRecord, type: :model do
  it 'is valid with valid attributes' do
    user = create(:user) # Assuming you have a User factory
    icon = create(:icon)
    category = create(:category, user:, icon:) # Assuming you have a Category factory
    transaction_record = build(:transaction_record, user:, category:)

    expect(transaction_record).to be_valid
  end

  it 'is not valid without a name' do
    transaction_record = build(:transaction_record, name: nil)
    expect(transaction_record).to_not be_valid
  end

  it 'is not valid without an amount' do
    transaction_record = build(:transaction_record, amount: nil)
    expect(transaction_record).to_not be_valid
  end

  it 'is not valid with a non-positive amount' do
    transaction_record = build(:transaction_record, amount: -10)
    expect(transaction_record).to_not be_valid
  end

  it 'is not valid without a category' do
    transaction_record = build(:transaction_record, category: nil)
    expect(transaction_record).to_not be_valid
  end
end
