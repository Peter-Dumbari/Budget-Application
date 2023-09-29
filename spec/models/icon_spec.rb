require 'rails_helper'

RSpec.describe Icon, type: :model do
  it 'has many transaction_records' do
    # Use the correct association name and reflect on it
    association = Icon.reflect_on_association(:categories)

    # Ensure the association exists and is of the correct type
    expect(association).to_not be_nil
    expect(association.macro).to eq(:has_many)
  end
end
