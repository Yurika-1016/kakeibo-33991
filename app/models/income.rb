class Income < ApplicationRecord
  belongs_to :user
  with_options presence: true do
    validates :income_category_id, numericality: { other_than: 0 }
    validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :income_category
end
