class Spending < ApplicationRecord
  belongs_to :user
  with_options presence: true do
    validates :spending_category_id, numericality: { other_than: 0 }
    validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :spending_category

  class << self
    def spending_category_for_graph
      spending_categories = all
      spending_category_all_data = {}
      spending_categories.each_with_index do | spending_category, index |
        spending_category_all_data = {spending_category.spending_category.name => spending_category.price} if index.nil?
        if spending_category_all_data.key?(spending_category.spending_category.name)
          spending_category_all_data[spending_category.spending_category.name] += spending_category.price
        else
          spending_category_all_data[spending_category.spending_category.name] = spending_category.price
        end
      end
      spending_category_all_data
    end
  end
end
