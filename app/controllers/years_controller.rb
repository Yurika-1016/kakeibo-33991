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
    @income_years = Income.where(created_at: Date.today.all_year)
    @income_years_salary = @income_years.where(income_category_id: 1)
    @income_years_bonus = @income_years.where(income_category_id: 2)
    @income_years_supplementary_income = @income_years.where(income_category_id: 3)
    @income_years_extraordinary_income = @income_years.where(income_category_id: 4)
  end

  def last_year
    @spending_last_year = Spending.where(created_at: Date.today.last_year.beginning_of_month..Date.today.last_year.end_of_month)
    @spending_last_year_year = @spending_last_year.spending_category_for_graph
    @spending_last_year_food = @spending_last_year.where(spending_category_id: 1)
    @spending_last_year_daily = @spending_last_year.where(spending_category_id: 2)
    @spending_last_year_house = @spending_last_year.where(spending_category_id: 3)
    @spending_last_year_infrastructure = @spending_last_year.where(spending_category_id: 4)
    @spending_last_year_communication = @spending_last_year.where(spending_category_id: 5)
    @spending_last_year_transport = @spending_last_year.where(spending_category_id: 6)
    @spending_last_year_entertainment = @spending_last_year.where(spending_category_id: 7)
    @spending_last_year_beauty = @spending_last_year.where(spending_category_id: 8)
    @spending_last_year_self_investment = @spending_last_year.where(spending_category_id: 9)
    @spending_last_year_health = @spending_last_year.where(spending_category_id: 10)
    @spending_last_year_other = @spending_last_year.where(spending_category_id: 11)
    @income_last_years = Income.where(created_at: Date.today.last_year.beginning_of_month..Date.today.last_year.end_of_month)
    @income_last_years_salary = @income_last_years.where(income_category_id: 1)
    @income_last_years_bonus = @income_last_years.where(income_category_id: 2)
    @income_last_years_supplementary_income = @income_last_years.where(income_category_id: 3)
    @income_last_years_extraordinary_income = @income_last_years.where(income_category_id: 4)
  end
end
