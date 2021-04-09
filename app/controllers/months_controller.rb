class MonthsController < ApplicationController
  def index
    @spending_months = Spending.where(created_at: Date.today.all_month)
    @spending_categories_month = @spending_months.spending_category_for_graph
    @spending_months_food = @spending_months.where(spending_category_id: 1)
    @spending_months_daily = @spending_months.where(spending_category_id: 2)
    @spending_months_house = @spending_months.where(spending_category_id: 3)
    @spending_months_infrastructure = @spending_months.where(spending_category_id: 4)
    @spending_months_communication = @spending_months.where(spending_category_id: 5)
    @spending_months_transport = @spending_months.where(spending_category_id: 6)
    @spending_months_entertainment = @spending_months.where(spending_category_id: 7)
    @spending_months_beauty = @spending_months.where(spending_category_id: 8)
    @spending_months_self_investment = @spending_months.where(spending_category_id: 9)
    @spending_months_health = @spending_months.where(spending_category_id: 10)
    @spending_months_other = @spending_months.where(spending_category_id: 11)
  end

  def last_month
    @last_month = Spending.where(created_at: Date.today.last_month.beginning_of_month..Date.today.last_month.end_of_month)
    @last_month_month = @last_month.spending_category_for_graph
    @last_month_food = @last_month.where(spending_category_id: 1)
    @last_month_daily = @last_month.where(spending_category_id: 2)
    @last_month_house = @last_month.where(spending_category_id: 3)
    @last_month_infrastructure = @last_month.where(spending_category_id: 4)
    @last_month_communication = @last_month.where(spending_category_id: 5)
    @last_month_transport = @last_month.where(spending_category_id: 6)
    @last_month_entertainment = @last_month.where(spending_category_id: 7)
    @last_month_beauty = @last_month.where(spending_category_id: 8)
    @last_month_self_investment = @last_month.where(spending_category_id: 9)
    @last_month_health = @last_month.where(spending_category_id: 10)
    @last_month_other = @last_month.where(spending_category_id: 11)
  end
end
