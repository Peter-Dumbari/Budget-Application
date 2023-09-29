class Category < ApplicationRecord
  belongs_to :user
  has_many :transaction_records
  belongs_to :icons, class_name: 'Icon', foreign_key: 'icon_id', optional: false

  def total_amount
    transaction_records.sum(:amount)
  end

  def icon=(new_icon)
    self.icon_id = new_icon.id
  end

  validates :name, presence: true, length: { maximum: 255 }
  validates :icon_id, presence: true
end
