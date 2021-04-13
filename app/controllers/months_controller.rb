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
    @income_months = Income.where(created_at: Date.today.all_month)
    @income_months_salary = @income_months.where(income_category_id: 1)
    @income_months_bonus = @income_months.where(income_category_id: 2)
    @income_months_supplementary_income = @income_months.where(income_category_id: 3)
    @income_months_extraordinary_income = @income_months.where(income_category_id: 4)
  end

  def last_month
    @spending_last_month = Spending.where(created_at: Date.today.last_month.beginning_of_month..Date.today.last_month.end_of_month)
    @spending_last_month_month = @spending_last_month.spending_category_for_graph
    @spending_last_month_food = @spending_last_month.where(spending_category_id: 1)
    @spending_last_month_daily = @spending_last_month.where(spending_category_id: 2)
    @spending_last_month_house = @spending_last_month.where(spending_category_id: 3)
    @spending_last_month_infrastructure = @spending_last_month.where(spending_category_id: 4)
    @spending_last_month_communication = @spending_last_month.where(spending_category_id: 5)
    @spending_last_month_transport = @spending_last_month.where(spending_category_id: 6)
    @spending_last_month_entertainment = @spending_last_month.where(spending_category_id: 7)
    @spending_last_month_beauty = @spending_last_month.where(spending_category_id: 8)
    @spending_last_month_self_investment = @spending_last_month.where(spending_category_id: 9)
    @spending_last_month_health = @spending_last_month.where(spending_category_id: 10)
    @spending_last_month_other = @spending_last_month.where(spending_category_id: 11)
    @income_last_months = Income.where(created_at: Date.today.last_month.beginning_of_month..Date.today.last_month.end_of_month)
    @income_last_months_salary = @income_last_months.where(income_category_id: 1)
    @income_last_months_bonus = @income_last_months.where(income_category_id: 2)
    @income_last_months_supplementary_income = @income_last_months.where(income_category_id: 3)
    @income_last_months_extraordinary_income = @income_last_months.where(income_category_id: 4)
  end
end
