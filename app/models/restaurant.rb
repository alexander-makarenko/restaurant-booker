class Restaurant < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }
  validates :capacity, presence: true
  validates :capacity, numericality: { only_integer: true,
    greater_than_or_equal_to: 1, less_than_or_equal_to: 1000 }, if: :capacity
  validates :opens_at, :closes_at, presence: true
  validate :business_hours_order

  private

    def business_hours_order
      errors[:base] << 'Business hours are invalid' if closes_at <= opens_at
    end
end