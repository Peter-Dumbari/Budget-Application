require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:user) { create(:user) }
  let(:icon) { create(:icon) }

  it 'is valid with valid attributes' do
    category = Category.new(name: 'Example Category', user:, icon_id: icon.id)
    expect(category).to be_valid
  end

  it 'is not valid without a name' do
    category = Category.new(name: nil, user:, icon_id: icon.id)
    expect(category).not_to be_valid
  end

  it 'is not valid without an icon' do
    category = Category.new(name: 'Example Category', user:, icon_id: nil)
    expect(category).not_to be_valid
  end

  it 'is not valid with a name exceeding 255 characters' do
    category = Category.new(name: 'A' * 256, user:, icon_id: icon.id)
    expect(category).not_to be_valid
  end

  it 'associates with user' do
    category = Category.reflect_on_association(:user)
    expect(category.macro).to eq(:belongs_to)
  end

  it 'associates with icon' do
    category = Category.reflect_on_association(:icons)
    expect(category.macro).to eq(:belongs_to)
  end

  it 'has many transaction_records' do
    category = Category.reflect_on_association(:transaction_records)
    expect(category.macro).to eq(:has_many)
  end
end
