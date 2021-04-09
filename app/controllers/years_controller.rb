class YearsController < ApplicationController
  def index
    @spending_years = Spending.where(created_at: Date.today.all_year)
    @spending_categories_year = @spending_years.spending_category_for_graph
    @spending_years_food = @spending_years.where(spending_category_id: 1)
    @spending_years_daily = @spending_years.where(spending_category_id: 2)
    @spending_years_house = @spending_years.where(spending_category_id: 3)
    @spending_years_infrastructure = @spending_years.where(spending_category_id: 4)
    @spending_years_communication = @spending_years.where(spending_category_id: 5)
    @spending_years_transport = @spending_years.where(spending_category_id: 6)
    @spending_years_entertainment = @spending_years.where(spending_category_id: 7)
    @spending_years_beauty = @spending_years.where(spending_category_id: 8)
    @spending_years_self_investment = @spending_years.where(spending_category_id: 9)
    @spending_years_health = @spending_years.where(spending_category_id: 10)
    @spending_years_other = @spending_years.where(spending_category_id: 11)
  end
end
